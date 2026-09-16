import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/models/currency_option.dart';
import '../../widgets/bottom_nav.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  static const String _storageKey = 'puffree_onboarding_v3';

  final PageController _pageController = PageController();

  late final AnimationController _ambientController;
  late final AnimationController _breathController;
  late final AnimationController _buildPlanController;

  Timer? _restoreTimer;
  Timer? _planTimer;

  bool _loadingSavedState = true;
  bool _planLoading = false;

  int _currentPage = 0;

  String _usageType = 'cigarettes';
  double _cigarettesPerDay = 12;
  double _pricePerPack = 180;
  double _cigarettesPerPack = 20;
  double _yearsSmoked = 5;
  double _podsPerWeek = 4;
  double _pricePerPod = 500;

  String _selectedCurrencyCode = 'RUB';

  final Set<String> _symptoms = <String>{};
  final Set<String> _motivations = <String>{};

  bool get _isVape => _usageType == 'vape';

  double get _dailyCost {
    if (_isVape) {
      return (_podsPerWeek / 7) * _pricePerPod;
    }

    final costPerCigarette = _pricePerPack / _cigarettesPerPack;
    return _cigarettesPerDay * costPerCigarette;
  }

  double get _monthlySavings => _dailyCost * 30;

  double get _yearlySavings => _dailyCost * 365;

  double get _lifetimeSpent => _dailyCost * 365 * _yearsSmoked;

  String get _selectedCurrencySymbol =>
      CurrencyOption.fromCode(_selectedCurrencyCode).symbol;

  List<_QuestionPage> get _pages => const [
    _QuestionPage(
      type: _QuestionType.habit,
      title: 'Готов вернуть контроль?',
      subtitle:
      'Сначала разберём твою привычку. Никаких длинных форм — несколько точных ответов, и Puffree соберёт твой маршрут.',
    ),
    _QuestionPage(
      type: _QuestionType.amount,
      title: 'Опиши свой обычный день',
      subtitle:
      'Это нужна не для оценки тебя. Это стартовая точка, от которой мы будем считать прогресс.',
    ),
    _QuestionPage(
      type: _QuestionType.money,
      title: 'Сколько привычка забирает у тебя?',
      subtitle:
      'Цена меняется сразу на экране — ты видишь не абстрактную цифру, а реальную стоимость привычки.',
    ),
    _QuestionPage(
      type: _QuestionType.body,
      title: 'Что ты замечаешь в себе?',
      subtitle:
      'Отметь то, что бывает у тебя. Можно выбрать несколько вариантов или ничего.',
    ),
    _QuestionPage(
      type: _QuestionType.motivation,
      title: 'Ради чего ты это делаешь?',
      subtitle:
      'Это станет твоей личной опорой. Puffree будет возвращать тебя к этой причине в нужный момент.',
    ),
    _QuestionPage(
      type: _QuestionType.building,
      title: 'Собираем твой маршрут',
      subtitle:
      'Не медицинский диагноз и не обещание идеального дня. Только твоя стартовая точка и понятные следующие шаги.',
    ),
    _QuestionPage(
      type: _QuestionType.result,
      title: 'Твой первый экран прогресса уже здесь',
      subtitle:
      'Сохраняем стартовые данные на устройстве и превращаем их в измеримый прогресс.',
    ),
  ];

  @override
  void initState() {
    super.initState();

    _ambientController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    )..repeat(reverse: true);

    _breathController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4200),
    )..repeat(reverse: true);

    _buildPlanController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _restore();
  }

  @override
  void dispose() {
    _restoreTimer?.cancel();
    _planTimer?.cancel();
    _pageController.dispose();
    _ambientController.dispose();
    _breathController.dispose();
    _buildPlanController.dispose();
    super.dispose();
  }

  Future<void> _restore() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_storageKey);

      if (raw != null && raw.isNotEmpty) {
        final map = Map<String, dynamic>.from(
          jsonDecodeSafe(raw),
        );

        _usageType = map['usageType'] as String? ?? 'cigarettes';
        _cigarettesPerDay = _toDouble(map['cigarettesPerDay'], 12);
        _pricePerPack = _toDouble(map['pricePerPack'], 180);
        _cigarettesPerPack = _toDouble(map['cigarettesPerPack'], 20);
        _yearsSmoked = _toDouble(map['yearsSmoked'], 5);
        _podsPerWeek = _toDouble(map['podsPerWeek'], 4);
        _pricePerPod = _toDouble(map['pricePerPod'], 500);
        _selectedCurrencyCode =
            map['currency'] as String? ?? _selectedCurrencyCode;

        _symptoms
          ..clear()
          ..addAll(_stringList(map['symptoms']));

        _motivations
          ..clear()
          ..addAll(_stringList(map['motivations']));

        final savedPage = (map['page'] as num?)?.toInt() ?? 0;
        _currentPage = savedPage.clamp(0, _pages.length - 1).toInt();
      }
    } catch (_) {
      // Corrupted local onboarding data should never block the app.
    } finally {
      if (!mounted) return;

      setState(() {
        _loadingSavedState = false;
      });

      _restoreTimer = Timer(const Duration(milliseconds: 60), () {
        if (!mounted || !_pageController.hasClients) return;
        _pageController.jumpToPage(_currentPage);
      });
    }
  }

  Map<String, dynamic> jsonDecodeSafe(String raw) {
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) return decoded;
    } catch (_) {}
    return <String, dynamic>{};
  }

  double _toDouble(dynamic value, double fallback) {
    if (value is num) return value.toDouble();
    return double.tryParse(value?.toString() ?? '') ?? fallback;
  }

  List<String> _stringList(dynamic value) {
    if (value is List) {
      return value.map((e) => e.toString()).toList();
    }
    return const <String>[];
  }

  Future<void> _save({int? page}) async {
    final prefs = await SharedPreferences.getInstance();

    final map = <String, dynamic>{
      'version': 3,
      'page': page ?? _currentPage,
      'usageType': _usageType,
      'cigarettesPerDay': _cigarettesPerDay,
      'pricePerPack': _pricePerPack,
      'cigarettesPerPack': _cigarettesPerPack,
      'yearsSmoked': _yearsSmoked,
      'podsPerWeek': _podsPerWeek,
      'pricePerPod': _pricePerPod,
      'currency': _selectedCurrencyCode,
      'symptoms': _symptoms.toList(),
      'motivations': _motivations.toList(),
      'savedAt': DateTime.now().toIso8601String(),
    };

    await prefs.setString(
      _storageKey,
      jsonEncode(map),
    );
  }

  Future<void> _changePage(int page) async {
    final target = page.clamp(0, _pages.length - 1).toInt();

    await _save(page: target);

    if (!mounted) return;

    setState(() => _currentPage = target);

    await _pageController.animateToPage(
      target,
      duration: const Duration(milliseconds: 620),
      curve: Curves.easeOutCubic,
    );

    if (target == 5) {
      _startPlanBuildingAnimation();
    }
  }

  void _next() {
    if (_currentPage == 4) {
      _changePage(5);
      return;
    }

    if (_currentPage == 5) {
      return;
    }

    if (_currentPage < _pages.length - 1) {
      _changePage(_currentPage + 1);
      return;
    }

    _startJourney();
  }

  void _previous() {
    if (_currentPage <= 0 || _planLoading) return;
    _changePage(_currentPage - 1);
  }

  void _startPlanBuildingAnimation() {
    _planTimer?.cancel();

    setState(() => _planLoading = true);
    _buildPlanController
      ..reset()
      ..forward();

    _planTimer = Timer(const Duration(milliseconds: 3400), () {
      if (!mounted) return;

      setState(() => _planLoading = false);
      _changePage(6);
    });
  }

  Future<void> _startJourney() async {
    await _save(page: 6);

    // Keep compatibility with the current ProgressBloc contract.
    // The selected usage type is also stored locally, so it can be added to
    // StartQuitJourney later without losing the onboarding decision.
    if (mounted) {
      context.read<ProgressBloc>().add(
        StartQuitJourney(
          cigarettesPerDay: _cigarettesPerDay,
          pricePerPack: _pricePerPack,
          cigarettesPerPack: _cigarettesPerPack.round(),
        ),
      );

      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const MainShell(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
              ),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 650),
        ),
      );
    }
  }

  void _toggleSetValue(
      Set<String> target,
      String value,
      ) {
    setState(() {
      if (target.contains(value)) {
        target.remove(value);
      } else {
        target.add(value);
      }
    });
    _save();
  }

  String _currencyLabel() => 'Валюта';

  String _formatMoney(double value) {
    final locale = Localizations.localeOf(context).toString();

    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: _selectedCurrencySymbol,
      decimalDigits: 0,
    );

    return formatter.format(value);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (_loadingSavedState) {
      return Scaffold(
        backgroundColor:
        isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
        body: const Center(
          child: SizedBox(
            width: 28,
            height: 28,
            child: CircularProgressIndicator(
              strokeWidth: 2.4,
              color: AppColors.primary,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor:
      isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: AnimatedBuilder(
        animation: _ambientController,
        builder: (context, _) {
          return Stack(
            children: [
              _buildAmbientBackground(isDark),

              SafeArea(
                child: Column(
                  children: [
                    _buildTopBar(isDark),
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: _pages.length,
                        physics: _planLoading
                            ? const NeverScrollableScrollPhysics()
                            : const BouncingScrollPhysics(),
                        onPageChanged: (index) {
                          setState(() => _currentPage = index);
                          _save(page: index);

                          if (index == 5) {
                            _startPlanBuildingAnimation();
                          }
                        },
                        itemBuilder: (context, index) {
                          return _buildQuestionPage(
                            _pages[index],
                            index,
                            isDark,
                          );
                        },
                      ),
                    ),
                    _buildBottomBar(isDark),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildAmbientBackground(bool isDark) {
    final t = _ambientController.value;

    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark
                      ? const [
                    Color(0xFF071313),
                    Color(0xFF0A1B1B),
                    Color(0xFF0A1018),
                  ]
                      : const [
                    Color(0xFFF1FFF9),
                    Color(0xFFF5FAFF),
                    Color(0xFFFAFCFC),
                  ],
                ),
              ),
              child: const SizedBox.expand(),
            ),
            Positioned(
              top: -150 + (t * 38),
              right: -90,
              child: _blurOrb(
                size: 370,
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.20 : 0.10,
                ),
              ),
            ),
            Positioned(
              bottom: -170 - (t * 30),
              left: -110,
              child: _blurOrb(
                size: 390,
                color: AppColors.accent.withValues(
                  alpha: isDark ? 0.13 : 0.07,
                ),
              ),
            ),
            Positioned(
              top: 250 - (t * 18),
              left: -80,
              child: _blurOrb(
                size: 190,
                color: AppColors.primaryLight.withValues(
                  alpha: isDark ? 0.07 : 0.05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _blurOrb({
    required double size,
    required Color color,
  }) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              color.withValues(alpha: 0.45),
              color.withValues(alpha: 0.18),
              color.withValues(alpha: 0.0),
            ],
            stops: const [
              0.0,
              0.45,
              1.0,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(bool isDark) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 6),
      child: Row(
        children: [
          _buildBrand(isDark),
          const Spacer(),
          if (_currentPage > 0 && !_planLoading)
            _circleButton(
              icon: Icons.arrow_back_rounded,
              isDark: isDark,
              onTap: _previous,
            ),
          if (_currentPage > 0 && !_planLoading) const SizedBox(width: 9),
          if (_currentPage < 5)
            _buildProgressPill(isDark),
        ],
      ),
    );
  }

  Widget _buildBrand(bool isDark) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
        child: Container(
          padding: const EdgeInsets.fromLTRB(9, 8, 14, 8),
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.055)
                : Colors.white.withValues(alpha: 0.78),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.035),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 31,
                height: 31,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primaryLight,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.28),
                      blurRadius: 18,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: CustomPaint(
                  painter: _BreezePainter(
                    color: Colors.white.withValues(alpha: 0.94),
                  ),
                ),
              ),
              const SizedBox(width: 9),
              Text(
                'Puffree',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.4,
                  color: isDark
                      ? Colors.white
                      : AppColors.textPrimaryLight,
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(duration: 450.ms).slideX(begin: -0.08);
  }

  Widget _circleButton({
    required IconData icon,
    required bool isDark,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.05)
                : Colors.white.withValues(alpha: 0.80),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.06)
                  : Colors.black.withValues(alpha: 0.035),
            ),
          ),
          child: Icon(
            icon,
            size: 19,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
      ),
    );
  }

  Widget _buildProgressPill(bool isDark) {
    final progress = (_currentPage + 1) / (_pages.length - 1);

    return Container(
      width: 102,
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.045)
            : Colors.white.withValues(alpha: 0.74),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.06)
              : Colors.black.withValues(alpha: 0.035),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 420),
                  curve: Curves.easeOutCubic,
                  width: 72 * progress.clamp(0.0, 1.0).toDouble(),
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.primary,
                        AppColors.primaryLight,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 7),
          Text(
            '${_currentPage + 1}/${_pages.length - 1}',
            style: GoogleFonts.inter(
              fontSize: 10.5,
              fontWeight: FontWeight.w800,
              color: isDark ? Colors.white54 : Colors.black45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionPage(
      _QuestionPage page,
      int index,
      bool isDark,
      ) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 8),
      child: _glassPanel(
        isDark: isDark,
        radius: 34,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildQuestionHeader(
                title: page.title,
                subtitle: page.subtitle,
                pageIndex: index,
                isDark: isDark,
              ),
              const SizedBox(height: 24),
              _buildQuestionBody(page.type, isDark),
            ],
          ),
        ),
      ),
    ).animate(
      key: ValueKey('page-$index'),
    ).fadeIn(
      duration: 420.ms,
    ).slideY(
      begin: 0.05,
      end: 0,
      curve: Curves.easeOutCubic,
    );
  }

  Widget _buildQuestionHeader({
    required String title,
    required String subtitle,
    required int pageIndex,
    required bool isDark,
  }) {
    final eyebrow = switch (pageIndex) {
      0 => 'ПЕРЕД СТАРТОМ',
      1 => 'ТВОЯ СТАРТОВАЯ ТОЧКА',
      2 => 'РЕАЛЬНАЯ ЦЕНА',
      3 => 'САМООЩУЩЕНИЕ',
      4 => 'ТВОЯ ПРИЧИНА',
      5 => 'ПЕРСОНАЛИЗАЦИЯ',
      _ => 'ГОТОВО',
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: isDark ? 0.12 : 0.08),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            eyebrow,
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.8,
              color: AppColors.primary,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: GoogleFonts.outfit(
            fontSize: 34,
            height: 1.02,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.35,
            color: isDark
                ? Colors.white
                : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 11),
        Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 14.5,
            height: 1.55,
            fontWeight: FontWeight.w500,
            color: isDark
                ? Colors.white.withValues(alpha: 0.60)
                : AppColors.textSecondaryLight,
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionBody(
      _QuestionType type,
      bool isDark,
      ) {
    switch (type) {
      case _QuestionType.habit:
        return _buildHabitPage(isDark);
      case _QuestionType.amount:
        return _buildAmountPage(isDark);
      case _QuestionType.money:
        return _buildMoneyPage(isDark);
      case _QuestionType.body:
        return _buildBodyPage(isDark);
      case _QuestionType.motivation:
        return _buildMotivationPage(isDark);
      case _QuestionType.building:
        return _buildBuildingPage(isDark);
      case _QuestionType.result:
        return _buildResultPage(isDark);
    }
  }

  Widget _buildHabitPage(bool isDark) {
    return Column(
      children: [
        _buildAnimatedLungs(isDark),
        const SizedBox(height: 24),
        _choiceCard(
          isDark: isDark,
          selected: _usageType == 'cigarettes',
          title: 'Я курю сигареты',
          subtitle: 'Основной сценарий Puffree',
          onTap: () {
            setState(() => _usageType = 'cigarettes');
            _save();
          },
          child: _ChoiceVisual(
            progress: 0.72,
            color: AppColors.primary,
            secondaryColor: AppColors.primaryLight,
          ),
        ),
        const SizedBox(height: 12),
        _choiceCard(
          isDark: isDark,
          selected: _usageType == 'vape',
          title: 'Я использую вейп',
          subtitle: 'Сохраним этот выбор для твоего профиля',
          onTap: () {
            setState(() => _usageType = 'vape');
            _save();
          },
          child: _ChoiceVisual(
            progress: 0.42,
            color: AppColors.accent,
            secondaryColor: AppColors.journalGradient.last,
          ),
        ),
      ],
    );
  }

  Widget _buildAmountPage(bool isDark) {
    if (_isVape) {
      return Column(
        children: [
          _metricCard(
            isDark: isDark,
            title: 'Поды / одноразки в неделю',
            value: '${_podsPerWeek.round()}',
            unit: 'шт.',
            visual: _MiniSparkline(
              progress: (_podsPerWeek / 10).clamp(0.0, 1.0).toDouble(),
              color: AppColors.accent,
            ),
          ),
          SliderTheme(
            data: _sliderTheme(isDark, AppColors.accent),
            child: Slider(
              value: _podsPerWeek,
              min: 1,
              max: 10,
              divisions: 9,
              onChanged: (value) {
                setState(() => _podsPerWeek = value);
                _save();
              },
            ),
          ),
          const SizedBox(height: 15),
          _buildMicroHint(
            isDark,
            'Позже профиль Puffree сможет разделить сценарии для сигарет и вейпа без потери истории.',
          ),
        ],
      );
    }

    return Column(
      children: [
        _metricCard(
          isDark: isDark,
          title: 'Сигарет в день',
          value: '${_cigarettesPerDay.round()}',
          unit: 'шт.',
          visual: _MiniSparkline(
            progress: (_cigarettesPerDay / 40).clamp(0.0, 1.0).toDouble(),
            color: AppColors.primary,
          ),
        ),
        SliderTheme(
          data: _sliderTheme(isDark, AppColors.primary),
          child: Slider(
            value: _cigarettesPerDay,
            min: 1,
            max: 40,
            divisions: 39,
            onChanged: (value) {
              setState(() => _cigarettesPerDay = value);
              _save();
            },
          ),
        ),
        const SizedBox(height: 22),
        _metricCard(
          isDark: isDark,
          title: 'Сколько лет это длится',
          value: '${_yearsSmoked.round()}',
          unit: 'лет',
          visual: _YearRing(
            progress: (_yearsSmoked / 40).clamp(0.0, 1.0).toDouble(),
            color: AppColors.coral,
          ),
        ),
        SliderTheme(
          data: _sliderTheme(isDark, AppColors.coral),
          child: Slider(
            value: _yearsSmoked,
            min: 0,
            max: 40,
            divisions: 40,
            onChanged: (value) {
              setState(() => _yearsSmoked = value);
              _save();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMoneyPage(bool isDark) {
    return Column(
      children: [
        _moneyHero(isDark),
        const SizedBox(height: 18),
        if (_isVape)
          _buildMoneySlider(
            isDark: isDark,
            title: 'Цена одного пода',
            value: _pricePerPod,
            min: 100,
            max: 3000,
            divisions: 58,
            suffix: _selectedCurrencySymbol,
            color: AppColors.accent,
            onChanged: (value) {
              setState(() => _pricePerPod = value);
              _save();
            },
          )
        else ...[
          _buildMoneySlider(
            isDark: isDark,
            title: 'Цена пачки',
            value: _pricePerPack,
            min: 50,
            max: 600,
            divisions: 55,
            suffix: _selectedCurrencySymbol,
            color: AppColors.primary,
            onChanged: (value) {
              setState(() => _pricePerPack = value);
              _save();
            },
          ),
          const SizedBox(height: 12),
          _buildMoneySlider(
            isDark: isDark,
            title: 'Сигарет в пачке',
            value: _cigarettesPerPack,
            min: 10,
            max: 30,
            divisions: 20,
            suffix: 'шт.',
            color: AppColors.primaryLight,
            onChanged: (value) {
              setState(() => _cigarettesPerPack = value);
              _save();
            },
          ),
        ],
        const SizedBox(height: 14),
        _buildCurrencyCard(isDark),
      ],
    );
  }

  Widget _moneyHero(bool isDark) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? const [
            Color(0xFF123C37),
            Color(0xFF0D2728),
          ]
              : const [
            Color(0xFFD9FFF2),
            Color(0xFFE8F6FF),
          ],
        ),
        borderRadius: BorderRadius.circular(27),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: isDark ? 0.18 : 0.12,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 62,
            height: 62,
            child: CustomPaint(
              painter: _MoneyOrbitPainter(
                progress: (_monthlySavings / (_yearlySavings / 3 + 1))
                    .clamp(0.0, 1.0)
                    .toDouble(),
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Потенциальная экономия',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.50)
                        : AppColors.textSecondaryLight,
                  ),
                ),
                const SizedBox(height: 4),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 240),
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 0.15),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    _formatMoney(_monthlySavings),
                    key: ValueKey(_monthlySavings.round()),
                    style: GoogleFonts.outfit(
                      fontSize: 29,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.0,
                      color: isDark
                          ? Colors.white
                          : AppColors.textPrimaryLight,
                    ),
                  ),
                ),
                Text(
                  'в месяц при отказе от привычки',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.42)
                        : AppColors.textSecondaryLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).scale(
      begin: const Offset(0.985, 0.985),
      end: const Offset(1, 1),
    );
  }

  Widget _buildMoneySlider({
    required bool isDark,
    required String title,
    required double value,
    required double min,
    required double max,
    required int divisions,
    required String suffix,
    required Color color,
    required ValueChanged<double> onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.032)
            : Colors.white.withValues(alpha: 0.70),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : Colors.black.withValues(alpha: 0.035),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w800,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.72)
                        : AppColors.textPrimaryLight,
                  ),
                ),
              ),
              Text(
                '${value.round()} $suffix',
                style: GoogleFonts.inter(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w900,
                  color: color,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: _sliderTheme(isDark, color),
            child: Slider(
              value: value,
              min: min,
              max: max,
              divisions: divisions,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrencyCard(bool isDark) {
    final currency = CurrencyOption.fromCode(_selectedCurrencyCode);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _showCurrencyPicker(),
        borderRadius: BorderRadius.circular(22),
        child: Ink(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.034)
                : Colors.white.withValues(alpha: 0.66),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.055)
                  : Colors.black.withValues(alpha: 0.035),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: _CurrencyBloomPainter(
                    color: AppColors.primary,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _currencyLabel(),
                      style: GoogleFonts.inter(
                        fontSize: 10.5,
                        fontWeight: FontWeight.w700,
                        color: isDark
                            ? Colors.white38
                            : Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '${currency.code}  ${currency.name}',
                      style: GoogleFonts.inter(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w900,
                        color: isDark
                            ? Colors.white
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCurrencyPicker() {
    const options = CurrencyOption.supported;

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (sheetContext) {
        final isDark =
            Theme.of(sheetContext).brightness == Brightness.dark;

        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 620),
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xFF0C1517).withValues(alpha: 0.97)
                  : Colors.white.withValues(alpha: 0.98),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(34),
              ),
              border: Border.all(
                color: isDark
                    ? Colors.white.withValues(alpha: 0.08)
                    : Colors.black.withValues(alpha: 0.05),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: 42,
                    height: 5,
                    decoration: BoxDecoration(
                      color: isDark
                          ? Colors.white24
                          : Colors.black12,
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Валюта',
                          style: GoogleFonts.outfit(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: isDark
                                ? Colors.white
                                : AppColors.textPrimaryLight,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(sheetContext),
                        icon: Icon(
                          Icons.close_rounded,
                          color: isDark
                              ? Colors.white70
                              : Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 4),
                      itemCount: options.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 2.15,
                      ),
                      itemBuilder: (_, index) {
                        final item = options[index];
                        final selected =
                            item.code == _selectedCurrencyCode;

                        return GestureDetector(
                          onTap: () {
                            setState(
                                  () => _selectedCurrencyCode = item.code,
                            );
                            _save();
                            Navigator.pop(sheetContext);
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 220),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            decoration: BoxDecoration(
                              color: selected
                                  ? AppColors.primary.withValues(
                                alpha: isDark ? 0.20 : 0.10,
                              )
                                  : isDark
                                  ? Colors.white.withValues(
                                alpha: 0.045,
                              )
                                  : Colors.black.withValues(
                                alpha: 0.025,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: selected ? 1.4 : 1,
                                color: selected
                                    ? AppColors.primary
                                    : isDark
                                    ? Colors.white.withValues(
                                  alpha: 0.06,
                                )
                                    : Colors.black.withValues(
                                  alpha: 0.04,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  item.flagEmoji,
                                  style: const TextStyle(fontSize: 22),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    '${item.code}\n${item.name}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.inter(
                                      fontSize: 11,
                                      height: 1.25,
                                      fontWeight: FontWeight.w800,
                                      color: isDark
                                          ? Colors.white
                                          : AppColors.textPrimaryLight,
                                    ),
                                  ),
                                ),
                                if (selected)
                                  const Icon(
                                    Icons.check_circle_rounded,
                                    size: 20,
                                    color: AppColors.primary,
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBodyPage(bool isDark) {
    const items = <String, String>{
      'breath': 'Чувствую, что дыхание стало тяжелее',
      'anxiety': 'Иногда чувствую сильную тревожность',
      'pulse': 'Замечаю учащённый пульс',
      'morning': 'Особенно тянет к первой сигарете утром',
      'cough': 'Есть утренний кашель',
    };

    return Column(
      children: [
        _buildBodyVisual(isDark),
        const SizedBox(height: 22),
        ...items.entries.map(
              (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _selectCard(
              isDark: isDark,
              selected: _symptoms.contains(entry.key),
              title: entry.value,
              onTap: () => _toggleSetValue(
                _symptoms,
                entry.key,
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        _buildMicroHint(
          isDark,
          'Это самоописание, а не диагноз. При тревожащих симптомах лучше обсудить их с врачом.',
        ),
      ],
    );
  }

  Widget _buildMotivationPage(bool isDark) {
    const items = <String, String>{
      'health': 'Хочу лучше заботиться о здоровье',
      'freedom': 'Хочу чувствовать себя свободнее',
      'money': 'Хочу перестать тратить деньги на это',
      'family': 'Хочу меньше зависеть от привычки рядом с близкими',
      'control': 'Хочу вернуть ощущение контроля',
      'future': 'Хочу сделать это ради своего будущего',
    };

    return Column(
      children: [
        _motivationVisual(isDark),
        const SizedBox(height: 22),
        ...items.entries.map(
              (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _selectCard(
              isDark: isDark,
              selected: _motivations.contains(entry.key),
              title: entry.value,
              onTap: () => _toggleSetValue(
                _motivations,
                entry.key,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'Можно выбрать несколько',
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: isDark ? Colors.white38 : Colors.black38,
          ),
        ),
      ],
    );
  }

  Widget _buildBuildingPage(bool isDark) {
    return Column(
      children: [
        SizedBox(
          height: 270,
          child: AnimatedBuilder(
            animation: _buildPlanController,
            builder: (context, _) {
              return CustomPaint(
                painter: _PlanBuilderPainter(
                  progress: Curves.easeInOutCubic.transform(
                    _buildPlanController.value,
                  ),
                  primary: AppColors.primary,
                  secondary: AppColors.accent,
                  muted: isDark
                      ? Colors.white.withValues(alpha: 0.16)
                      : Colors.black.withValues(alpha: 0.10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${(_buildPlanController.value * 100).round()}%',
                          style: GoogleFonts.outfit(
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -2,
                            color: isDark
                                ? Colors.white
                                : AppColors.textPrimaryLight,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'твоя стартовая карта',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: isDark
                                ? Colors.white54
                                : Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        _animatedBuildStep(
          isDark,
          index: 0,
          title: 'Сохраняем твои ответы',
        ),
        _animatedBuildStep(
          isDark,
          index: 1,
          title: 'Считаем финансовую цель',
        ),
        _animatedBuildStep(
          isDark,
          index: 2,
          title: 'Формируем сценарии для тяги',
        ),
        _animatedBuildStep(
          isDark,
          index: 3,
          title: 'Подготавливаем первые шаги',
        ),
        const SizedBox(height: 16),
        _buildMicroHint(
          isDark,
          'Мы намеренно не обещаем «регенерацию лёгких за X часов» — Puffree показывает измеримые вещи и отделяет факт от мотивации.',
        ),
      ],
    );
  }

  Widget _animatedBuildStep(
      bool isDark, {
        required int index,
        required String title,
      }) {
    final progress = _buildPlanController.value;
    final threshold = index / 4;
    final visible = progress >= threshold;

    return AnimatedOpacity(
      opacity: visible ? 1 : 0.28,
      duration: const Duration(milliseconds: 220),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: visible
                    ? AppColors.primary.withValues(
                  alpha: isDark ? 0.16 : 0.10,
                )
                    : Colors.transparent,
              ),
              child: visible
                  ? const Icon(
                Icons.check_rounded,
                size: 16,
                color: AppColors.primary,
              )
                  : const SizedBox(),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: isDark
                      ? Colors.white.withValues(alpha: 0.75)
                      : AppColors.textPrimaryLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultPage(bool isDark) {
    final monthly = _formatMoney(_monthlySavings);
    final yearly = _formatMoney(_yearlySavings);

    return Column(
      children: [
        _resultHero(isDark),
        const SizedBox(height: 18),
        Row(
          children: [
            Expanded(
              child: _resultMetric(
                isDark: isDark,
                value: monthly,
                label: 'экономия / месяц',
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _resultMetric(
                isDark: isDark,
                value: yearly,
                label: 'экономия / год',
                color: AppColors.accent,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _planPreview(isDark),
        const SizedBox(height: 14),
        _buildMicroHint(
          isDark,
          'Эти цифры — расчёт по твоим ответам, а не обещание результата. Реальный прогресс зависит от твоего поведения.',
        ),
      ],
    );
  }

  Widget _resultHero(bool isDark) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? const [
            Color(0xFF103A34),
            Color(0xFF101B24),
          ]
              : const [
            Color(0xFFD8FFF2),
            Color(0xFFF4F8FF),
          ],
        ),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: isDark ? 0.18 : 0.12,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _RecoveryGraphPainter(
                primary: AppColors.primary,
                secondary: AppColors.accent,
                dark: isDark,
              ),
            ),
          ),
          Positioned(
            left: 22,
            bottom: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Первые 30 дней',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    color: isDark
                        ? Colors.white54
                        : AppColors.textSecondaryLight,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'меньше расходов → больше контроля',
                  style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.7,
                    color: isDark
                        ? Colors.white
                        : AppColors.textPrimaryLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms).scale(
      begin: const Offset(0.98, 0.98),
      end: const Offset(1, 1),
    );
  }

  Widget _resultMetric({
    required bool isDark,
    required String value,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 16),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.035)
            : Colors.white.withValues(alpha: 0.68),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : Colors.black.withValues(alpha: 0.035),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.8,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 10.5,
              fontWeight: FontWeight.w700,
              color: isDark ? Colors.white38 : Colors.black45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _planPreview(bool isDark) {
    final selectedCount = _motivations.length;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.035)
            : Colors.white.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : Colors.black.withValues(alpha: 0.035),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            height: 48,
            child: CustomPaint(
              painter: _PlanCorePainter(
                color: AppColors.primary,
                accent: AppColors.accent,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'План персонализирован',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: isDark
                        ? Colors.white
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  '$selectedCount личных мотиваций • '
                      '${_symptoms.length} отмеченных состояний',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? Colors.white54
                        : AppColors.textSecondaryLight,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle_rounded,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget _metricCard({
    required bool isDark,
    required String title,
    required String value,
    required String unit,
    required Widget visual,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.035)
            : Colors.white.withValues(alpha: 0.70),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : Colors.black.withValues(alpha: 0.035),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 58,
            height: 58,
            child: visual,
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: isDark ? Colors.white38 : Colors.black45,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value,
                      style: GoogleFonts.outfit(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1,
                        color: isDark
                            ? Colors.white
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        unit,
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _choiceCard({
    required bool isDark,
    required bool selected,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required Widget child,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(26),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 260),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: selected
                ? AppColors.primary.withValues(alpha: isDark ? 0.13 : 0.08)
                : isDark
                ? Colors.white.withValues(alpha: 0.033)
                : Colors.white.withValues(alpha: 0.70),
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
              width: selected ? 1.35 : 1,
              color: selected
                  ? AppColors.primary
                  : isDark
                  ? Colors.white.withValues(alpha: 0.055)
                  : Colors.black.withValues(alpha: 0.035),
            ),
            boxShadow: selected
                ? [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.12),
                blurRadius: 26,
                offset: const Offset(0, 12),
              ),
            ]
                : null,
          ),
          child: Row(
            children: [
              AnimatedScale(
                scale: selected ? 1.0 : 0.93,
                duration: const Duration(milliseconds: 240),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: child,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.4,
                        color: isDark
                            ? Colors.white
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: GoogleFonts.inter(
                        fontSize: 11.5,
                        height: 1.35,
                        fontWeight: FontWeight.w600,
                        color: isDark
                            ? Colors.white54
                            : AppColors.textSecondaryLight,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 220),
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? AppColors.primary
                      : (isDark
                      ? Colors.white.withValues(alpha: 0.04)
                      : Colors.black.withValues(alpha: 0.025)),
                  border: Border.all(
                    color: selected
                        ? AppColors.primary
                        : (isDark
                        ? Colors.white.withValues(alpha: 0.08)
                        : Colors.black.withValues(alpha: 0.06)),
                  ),
                ),
                child: selected
                    ? const Icon(
                  Icons.check_rounded,
                  size: 17,
                  color: Colors.white,
                )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectCard({
    required bool isDark,
    required bool selected,
    required String title,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: selected
                ? AppColors.primary.withValues(alpha: isDark ? 0.12 : 0.075)
                : isDark
                ? Colors.white.withValues(alpha: 0.03)
                : Colors.white.withValues(alpha: 0.68),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected
                  ? AppColors.primary.withValues(alpha: 0.72)
                  : isDark
                  ? Colors.white.withValues(alpha: 0.05)
                  : Colors.black.withValues(alpha: 0.03),
              width: selected ? 1.2 : 1,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    height: 1.35,
                    fontWeight: FontWeight.w700,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.80)
                        : AppColors.textPrimaryLight,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? AppColors.primary
                      : Colors.transparent,
                  border: Border.all(
                    color: selected
                        ? AppColors.primary
                        : isDark
                        ? Colors.white24
                        : Colors.black12,
                  ),
                ),
                child: selected
                    ? const Icon(
                  Icons.check_rounded,
                  size: 15,
                  color: Colors.white,
                )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMicroHint(bool isDark, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 9),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 10.8,
              height: 1.45,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.white38 : Colors.black38,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedLungs(bool isDark) {
    return SizedBox(
      height: 220,
      child: AnimatedBuilder(
        animation: _breathController,
        builder: (context, _) {
          final wave =
              (math.sin(_breathController.value * math.pi * 2) + 1) / 2;

          return CustomPaint(
            painter: _LungsPainter(
              t: wave,
              primary: AppColors.primary,
              secondary: AppColors.primaryLight,
              dark: isDark,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'сделай первый шаг',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.4,
                    color: isDark ? Colors.white54 : Colors.black45,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBodyVisual(bool isDark) {
    return SizedBox(
      height: 150,
      child: CustomPaint(
        painter: _BodyPulsePainter(
          primary: AppColors.primary,
          accent: AppColors.coral,
          dark: isDark,
        ),
      ),
    );
  }

  Widget _motivationVisual(bool isDark) {
    return SizedBox(
      height: 155,
      child: CustomPaint(
        painter: _MotivationPainter(
          primary: AppColors.primary,
          accent: AppColors.accent,
          muted: isDark
              ? Colors.white.withValues(alpha: 0.18)
              : Colors.black.withValues(alpha: 0.10),
        ),
      ),
    );
  }

  SliderThemeData _sliderTheme(bool isDark, Color color) {
    return SliderTheme.of(context).copyWith(
      trackHeight: 5,
      activeTrackColor: color,
      inactiveTrackColor: isDark ? Colors.white12 : Colors.black12,
      thumbColor: Colors.white,
      overlayColor: color.withValues(alpha: 0.12),
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 8,
        elevation: 3,
      ),
      overlayShape: const RoundSliderOverlayShape(
        overlayRadius: 17,
      ),
    );
  }

  Widget _buildBottomBar(bool isDark) {
    final isLast = _currentPage == _pages.length - 1;

    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 6, 18, 22),
      child: Column(
        children: [
          if (_currentPage == 5)
            Text(
              'Пожалуйста, подожди несколько секунд…',
              style: GoogleFonts.inter(
                fontSize: 10.5,
                fontWeight: FontWeight.w700,
                color: isDark ? Colors.white38 : Colors.black38,
              ),
            ),
          if (_currentPage == 5) const SizedBox(height: 10),
          _actionButton(
            label: _currentPage == 5
                ? 'Создаём план…'
                : isLast
                ? 'Начать мой путь'
                : 'Продолжить',
            onTap: (_currentPage == 5 || _planLoading) ? null : _next,
            isLoading: _currentPage == 5,
          ),
        ],
      ),
    );
  }

  Widget _actionButton({
    required String label,
    required VoidCallback? onTap,
    required bool isLoading,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          colors: onTap == null
              ? [
            AppColors.primary.withValues(alpha: 0.55),
            AppColors.primaryLight.withValues(alpha: 0.55),
          ]
              : const [
            AppColors.primary,
            AppColors.primaryLight,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.25),
            blurRadius: 28,
            offset: const Offset(0, 13),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(22),
          child: SizedBox(
            height: 62,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.2,
                      color: Colors.white,
                    ),
                  )
                else
                  Text(
                    label,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.15,
                      color: Colors.white,
                    ),
                  ),
                if (!isLoading) ...[
                  const SizedBox(width: 10),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.17),
                    ),
                    child: Icon(
                      _currentPage == _pages.length - 1
                          ? Icons.auto_awesome_rounded
                          : Icons.arrow_forward_rounded,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(duration: 350.ms).slideY(begin: 0.08);
  }

  Widget _glassPanel({
    required bool isDark,
    required double radius,
    required Widget child,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 18,
          sigmaY: 18,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isDark
                  ? [
                Colors.white.withValues(alpha: 0.072),
                Colors.white.withValues(alpha: 0.025),
              ]
                  : [
                Colors.white.withValues(alpha: 0.84),
                Colors.white.withValues(alpha: 0.59),
              ],
            ),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.085)
                  : Colors.white.withValues(alpha: 0.92),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: isDark ? 0.20 : 0.05,
                ),
                blurRadius: 44,
                offset: const Offset(0, 22),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}

enum _QuestionType {
  habit,
  amount,
  money,
  body,
  motivation,
  building,
  result,
}

class _QuestionPage {
  final _QuestionType type;
  final String title;
  final String subtitle;

  const _QuestionPage({
    required this.type,
    required this.title,
    required this.subtitle,
  });
}

class _ChoiceVisual extends StatelessWidget {
  final double progress;
  final Color color;
  final Color secondaryColor;

  const _ChoiceVisual({
    required this.progress,
    required this.color,
    required this.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ChoiceVisualPainter(
        progress: progress,
        color: color,
        secondaryColor: secondaryColor,
      ),
    );
  }
}

class _MiniSparkline extends StatelessWidget {
  final double progress;
  final Color color;

  const _MiniSparkline({
    required this.progress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MiniSparkPainter(
        progress: progress,
        color: color,
      ),
    );
  }
}

class _YearRing extends StatelessWidget {
  final double progress;
  final Color color;

  const _YearRing({
    required this.progress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RingPainter(
        progress: progress,
        color: color,
      ),
    );
  }
}

class _BreezePainter extends CustomPainter {
  final Color color;

  _BreezePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7
      ..strokeCap = StrokeCap.round;

    final path1 = Path()
      ..moveTo(size.width * 0.19, size.height * 0.43)
      ..cubicTo(
        size.width * 0.36,
        size.height * 0.28,
        size.width * 0.54,
        size.height * 0.33,
        size.width * 0.78,
        size.height * 0.22,
      );

    final path2 = Path()
      ..moveTo(size.width * 0.18, size.height * 0.58)
      ..cubicTo(
        size.width * 0.38,
        size.height * 0.45,
        size.width * 0.54,
        size.height * 0.54,
        size.width * 0.78,
        size.height * 0.42,
      );

    canvas.drawPath(path1, p);
    canvas.drawPath(path2, p);
  }

  @override
  bool shouldRepaint(covariant _BreezePainter oldDelegate) =>
      oldDelegate.color != color;
}

class _LungsPainter extends CustomPainter {
  final double t;
  final Color primary;
  final Color secondary;
  final bool dark;

  _LungsPainter({
    required this.t,
    required this.primary,
    required this.secondary,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.54;

    final pulse = 0.92 + (t * 0.10);

    final glow = Paint()
      ..shader = RadialGradient(
        colors: [
          primary.withValues(alpha: dark ? 0.18 : 0.13),
          primary.withValues(alpha: 0.0),
        ],
      ).createShader(
        Rect.fromCircle(
          center: Offset(cx, cy),
          radius: 112,
        ),
      );

    canvas.drawCircle(
      Offset(cx, cy),
      112,
      glow,
    );

    final left = Path();
    final right = Path();

    left.moveTo(cx - 4, cy - 45);
    left.cubicTo(
      cx - 44,
      cy - 39,
      cx - 74,
      cy - 9,
      cx - 66,
      cy + 34,
    );
    left.cubicTo(
      cx - 58,
      cy + 72,
      cx - 28,
      cy + 81,
      cx - 12,
      cy + 55,
    );
    left.cubicTo(
      cx - 3,
      cy + 40,
      cx - 2,
      cy + 13,
      cx - 4,
      cy - 45,
    );

    right.moveTo(cx + 4, cy - 45);
    right.cubicTo(
      cx + 44,
      cy - 39,
      cx + 74,
      cy - 9,
      cx + 66,
      cy + 34,
    );
    right.cubicTo(
      cx + 58,
      cy + 72,
      cx + 28,
      cy + 81,
      cx + 12,
      cy + 55,
    );
    right.cubicTo(
      cx + 3,
      cy + 40,
      cx + 2,
      cy + 13,
      cx + 4,
      cy - 45,
    );

    final fill = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          primary.withValues(alpha: dark ? 0.32 : 0.22),
          secondary.withValues(alpha: dark ? 0.10 : 0.06),
        ],
      ).createShader(
        Rect.fromLTWH(
          cx - 75,
          cy - 75,
          150,
          160,
        ),
      );

    final stroke = Paint()
      ..color = primary.withValues(alpha: dark ? 0.38 : 0.22)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3;

    canvas.save();
    canvas.translate(cx, cy);
    canvas.scale(pulse, pulse);
    canvas.translate(-cx, -cy);

    canvas.drawPath(left, fill);
    canvas.drawPath(right, fill);
    canvas.drawPath(left, stroke);
    canvas.drawPath(right, stroke);

    final trachea = Paint()
      ..color = primary.withValues(alpha: dark ? 0.42 : 0.24)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.1
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(cx, cy - 66),
      Offset(cx, cy + 5),
      trachea,
    );

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(cx - 19, cy - 12),
        width: 38,
        height: 42,
      ),
      math.pi * 0.15,
      math.pi * 0.65,
      false,
      trachea,
    );

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(cx + 19, cy - 12),
        width: 38,
        height: 42,
      ),
      math.pi * 0.20,
      math.pi * 0.65,
      false,
      trachea,
    );

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _LungsPainter oldDelegate) {
    return oldDelegate.t != t ||
        oldDelegate.dark != dark ||
        oldDelegate.primary != primary;
  }
}

class _ChoiceVisualPainter extends CustomPainter {
  final double progress;
  final Color color;
  final Color secondaryColor;

  _ChoiceVisualPainter({
    required this.progress,
    required this.color,
    required this.secondaryColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final glow = Paint()
      ..shader = RadialGradient(
        colors: [
          color.withValues(alpha: 0.20),
          color.withValues(alpha: 0.0),
        ],
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: size.width * 0.50,
        ),
      );

    canvas.drawCircle(
      center,
      size.width * 0.48,
      glow,
    );

    final stroke = Paint()
      ..shader = SweepGradient(
        colors: [
          color,
          secondaryColor,
          color.withValues(alpha: 0.2),
          color,
        ],
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: size.width * 0.30,
        ),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: size.width * 0.29,
      ),
      -math.pi / 2,
      math.pi * 1.65 * progress,
      false,
      stroke,
    );

    final core = Paint()
      ..color = color.withValues(alpha: 0.11)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      center,
      size.width * 0.20,
      core,
    );

    final p = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;

    final wave = Path()
      ..moveTo(size.width * 0.21, size.height * 0.53)
      ..cubicTo(
        size.width * 0.34,
        size.height * 0.33,
        size.width * 0.40,
        size.height * 0.70,
        size.width * 0.59,
        size.height * 0.50,
      )
      ..cubicTo(
        size.width * 0.70,
        size.height * 0.37,
        size.width * 0.75,
        size.height * 0.57,
        size.width * 0.80,
        size.height * 0.45,
      );

    canvas.drawPath(wave, p);
  }

  @override
  bool shouldRepaint(covariant _ChoiceVisualPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class _MiniSparkPainter extends CustomPainter {
  final double progress;
  final Color color;

  _MiniSparkPainter({
    required this.progress,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final line = Paint()
      ..color = color.withValues(alpha: 0.9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.6
      ..strokeCap = StrokeCap.round;

    final points = <Offset>[
      Offset(2, size.height * 0.72),
      Offset(size.width * 0.18, size.height * 0.55),
      Offset(size.width * 0.34, size.height * 0.67),
      Offset(size.width * 0.52, size.height * 0.34),
      Offset(size.width * 0.72, size.height * 0.50),
      Offset(size.width - 2, size.height * (0.46 - progress * 0.22)),
    ];

    final path = Path()..moveTo(points.first.dx, points.first.dy);

    for (var i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    canvas.drawPath(path, line);

    final dot = Paint()..color = color;
    canvas.drawCircle(points.last, 4, dot);
  }

  @override
  bool shouldRepaint(covariant _MiniSparkPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class _RingPainter extends CustomPainter {
  final double progress;
  final Color color;

  _RingPainter({
    required this.progress,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * 0.34;

    final bg = Paint()
      ..color = color.withValues(alpha: 0.10)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7;

    final fg = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, bg);

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      fg,
    );
  }

  @override
  bool shouldRepaint(covariant _RingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class _MoneyOrbitPainter extends CustomPainter {
  final double progress;
  final Color color;

  _MoneyOrbitPainter({
    required this.progress,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final ring = Paint()
      ..color = color.withValues(alpha: 0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3;

    canvas.drawCircle(
      center,
      23,
      ring,
    );

    final orbit = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 23),
      -math.pi / 2,
      math.pi * 1.72 * progress,
      false,
      orbit,
    );

    final dotAngle = -math.pi / 2 + math.pi * 1.72 * progress;
    final dot = Offset(
      center.dx + 23 * math.cos(dotAngle),
      center.dy + 23 * math.sin(dotAngle),
    );

    canvas.drawCircle(
      dot,
      4.3,
      Paint()..color = color,
    );

    final coin = Paint()
      ..color = color.withValues(alpha: 0.10)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 12, coin);
  }

  @override
  bool shouldRepaint(covariant _MoneyOrbitPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class _CurrencyBloomPainter extends CustomPainter {
  final Color color;

  _CurrencyBloomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final fill = Paint()
      ..color = color.withValues(alpha: 0.09);

    canvas.drawCircle(center, 18, fill);

    final stroke = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7;

    for (var i = 0; i < 6; i++) {
      final angle = i * math.pi / 3;
      final a = Offset(
        center.dx + 9 * math.cos(angle),
        center.dy + 9 * math.sin(angle),
      );
      final b = Offset(
        center.dx + 15 * math.cos(angle),
        center.dy + 15 * math.sin(angle),
      );
      canvas.drawLine(a, b, stroke);
    }

    canvas.drawCircle(center, 5, fill);
  }

  @override
  bool shouldRepaint(covariant _CurrencyBloomPainter oldDelegate) => false;
}

class _BodyPulsePainter extends CustomPainter {
  final Color primary;
  final Color accent;
  final bool dark;

  _BodyPulsePainter({
    required this.primary,
    required this.accent,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final centerY = size.height * 0.52;

    final path = Path()
      ..moveTo(10, centerY)
      ..cubicTo(
        size.width * 0.15,
        centerY,
        size.width * 0.20,
        centerY - 10,
        size.width * 0.29,
        centerY,
      )
      ..lineTo(size.width * 0.37, centerY)
      ..lineTo(size.width * 0.42, centerY - 44)
      ..lineTo(size.width * 0.49, centerY + 38)
      ..lineTo(size.width * 0.56, centerY - 18)
      ..lineTo(size.width * 0.63, centerY)
      ..cubicTo(
        size.width * 0.72,
        centerY,
        size.width * 0.78,
        centerY - 7,
        size.width - 10,
        centerY,
      );

    final pulse = Paint()
      ..color = accent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, pulse);

    final aura = Paint()
      ..shader = LinearGradient(
        colors: [
          primary.withValues(alpha: dark ? 0.14 : 0.10),
          accent.withValues(alpha: 0.12),
          primary.withValues(alpha: 0.0),
        ],
      ).createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );

    canvas.drawCircle(
      Offset(size.width * 0.5, centerY),
      58,
      aura,
    );
  }

  @override
  bool shouldRepaint(covariant _BodyPulsePainter oldDelegate) => false;
}

class _MotivationPainter extends CustomPainter {
  final Color primary;
  final Color accent;
  final Color muted;

  _MotivationPainter({
    required this.primary,
    required this.accent,
    required this.muted,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.54);

    final rings = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.1
      ..color = muted;

    for (var i = 1; i <= 3; i++) {
      canvas.drawCircle(
        center,
        30.0 + i * 16,
        rings,
      );
    }

    final core = Paint()
      ..shader = RadialGradient(
        colors: [
          primary.withValues(alpha: 0.32),
          accent.withValues(alpha: 0.16),
          primary.withValues(alpha: 0.0),
        ],
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: 66,
        ),
      );

    canvas.drawCircle(center, 66, core);

    final dotPaint = Paint()..color = primary;

    final points = <Offset>[
      Offset(center.dx - 64, center.dy - 16),
      Offset(center.dx + 61, center.dy - 34),
      Offset(center.dx - 40, center.dy + 55),
      Offset(center.dx + 42, center.dy + 50),
    ];

    for (var i = 0; i < points.length; i++) {
      final paint = Paint()
        ..color = primary.withValues(
          alpha: i.isEven ? 0.82 : 0.55,
        );

      canvas.drawCircle(
        points[i],
        i.isEven ? 4.2 : 3.2,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _MotivationPainter oldDelegate) => false;
}

class _PlanBuilderPainter extends CustomPainter {
  final double progress;
  final Color primary;
  final Color secondary;
  final Color muted;

  _PlanBuilderPainter({
    required this.progress,
    required this.primary,
    required this.secondary,
    required this.muted,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.51);

    final outerRadius = math.min(size.width, size.height) * 0.34;

    final bg = Paint()
      ..color = muted
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final fg = Paint()
      ..shader = SweepGradient(
        colors: [
          primary,
          secondary,
          primary,
        ],
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: outerRadius,
        ),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: outerRadius,
      ),
      -math.pi / 2,
      math.pi * 2,
      false,
      bg,
    );

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: outerRadius,
      ),
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      fg,
    );

    for (var i = 0; i < 6; i++) {
      final angle =
          -math.pi / 2 + i * (math.pi * 2 / 6);
      final r = outerRadius + 14;

      final p = Offset(
        center.dx + r * math.cos(angle),
        center.dy + r * math.sin(angle),
      );

      final dot = Paint()
        ..color = (i / 6 <= progress)
            ? primary
            : muted.withValues(alpha: 0.6);

      canvas.drawCircle(p, 3.5, dot);
    }
  }

  @override
  bool shouldRepaint(covariant _PlanBuilderPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class _RecoveryGraphPainter extends CustomPainter {
  final Color primary;
  final Color secondary;
  final bool dark;

  _RecoveryGraphPainter({
    required this.primary,
    required this.secondary,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final area = Rect.fromLTWH(
      18,
      18,
      size.width - 36,
      size.height - 42,
    );

    final fill = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          primary.withValues(alpha: dark ? 0.16 : 0.11),
          primary.withValues(alpha: 0.0),
        ],
      ).createShader(area);

    final line = Paint()
      ..color = primary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    final points = <Offset>[
      Offset(area.left, area.bottom - 24),
      Offset(
        area.left + area.width * 0.18,
        area.bottom - area.height * 0.16,
      ),
      Offset(
        area.left + area.width * 0.36,
        area.bottom - area.height * 0.30,
      ),
      Offset(
        area.left + area.width * 0.56,
        area.bottom - area.height * 0.42,
      ),
      Offset(
        area.left + area.width * 0.75,
        area.bottom - area.height * 0.53,
      ),
      Offset(
        area.right,
        area.bottom - area.height * 0.62,
      ),
    ];

    final path = Path()
      ..moveTo(points.first.dx, points.first.dy);

    for (var i = 1; i < points.length; i++) {
      final previous = points[i - 1];
      final current = points[i];
      final controlX = (previous.dx + current.dx) / 2;

      path.cubicTo(
        controlX,
        previous.dy,
        controlX,
        current.dy,
        current.dx,
        current.dy,
      );
    }

    final fillPath = Path.from(path)
      ..lineTo(points.last.dx, area.bottom)
      ..lineTo(points.first.dx, area.bottom)
      ..close();

    canvas.drawPath(fillPath, fill);
    canvas.drawPath(path, line);

    final dots = Paint()..color = secondary;

    for (var i = 1; i < points.length; i += 2) {
      canvas.drawCircle(points[i], 4.0, dots);
    }
  }

  @override
  bool shouldRepaint(covariant _RecoveryGraphPainter oldDelegate) => false;
}

class _PlanCorePainter extends CustomPainter {
  final Color color;
  final Color accent;

  _PlanCorePainter({
    required this.color,
    required this.accent,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final fill = Paint()
      ..shader = RadialGradient(
        colors: [
          color.withValues(alpha: 0.26),
          accent.withValues(alpha: 0.05),
        ],
      ).createShader(
        Rect.fromCircle(
          center: center,
          radius: 24,
        ),
      );

    canvas.drawCircle(center, 22, fill);

    final p = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 17),
      -math.pi / 2,
      math.pi * 1.25,
      false,
      p,
    );

    canvas.drawCircle(
      center,
      5,
      Paint()..color = accent,
    );
  }

  @override
  bool shouldRepaint(covariant _PlanCorePainter oldDelegate) => false;
}
