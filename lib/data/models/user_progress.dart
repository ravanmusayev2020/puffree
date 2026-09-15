import 'package:equatable/equatable.dart';
import '../../core/utils/date_keys.dart';

class UserProgress extends Equatable {
  final DateTime? quitDate;
  final int currentStreak;
  final int longestStreak;
  final int totalSmokeFreeDays;
  final int currentLevel;
  final int cigarettesAvoided;
  final double moneySaved;
  final int dailyGoalCompleted;
  final List<String> completedMissionsToday;
  final DateTime lastActiveDate;
  final bool isOnboardingCompleted;
  final double cigarettesPerDayBefore;
  final double pricePerPack;
  final int cigarettesPerPack;
  final String displayName;
  final String avatarEmoji;
  final String currencyCode;
  final List<String> checkInDates;
  final List<String> relapseDates;
  final int relapseCount;

  const UserProgress({
    this.quitDate,
    this.currentStreak = 0,
    this.longestStreak = 0,
    this.totalSmokeFreeDays = 0,
    this.currentLevel = 1,
    this.cigarettesAvoided = 0,
    this.moneySaved = 0.0,
    this.dailyGoalCompleted = 0,
    this.completedMissionsToday = const [],
    required this.lastActiveDate,
    this.isOnboardingCompleted = false,
    this.cigarettesPerDayBefore = 10,
    this.pricePerPack = 5.0,
    this.cigarettesPerPack = 20,
    this.displayName = '',
    this.avatarEmoji = '🌿',
    this.currencyCode = 'RUB',
    this.checkInDates = const [],
    this.relapseDates = const [],
    this.relapseCount = 0,
  });

  int get daysSinceQuit {
    if (quitDate == null) return 0;
    final now = DateTime.now();
    return now.difference(DateTime(quitDate!.year, quitDate!.month, quitDate!.day)).inDays;
  }

  Duration get smokeFreeDuration {
    if (quitDate == null) return Duration.zero;
    return DateTime.now().difference(quitDate!);
  }

  bool get hasCheckedInToday => checkInDates.contains(DateKeys.today());

  bool get relapsedToday => relapseDates.contains(DateKeys.today());

  double get estimatedCo2Grams => cigarettesAvoided * 14.0;

  double get estimatedButtsAvoided => cigarettesAvoided.toDouble();

  UserProgress copyWith({
    DateTime? quitDate,
    int? currentStreak,
    int? longestStreak,
    int? totalSmokeFreeDays,
    int? currentLevel,
    int? cigarettesAvoided,
    double? moneySaved,
    int? dailyGoalCompleted,
    List<String>? completedMissionsToday,
    DateTime? lastActiveDate,
    bool? isOnboardingCompleted,
    double? cigarettesPerDayBefore,
    double? pricePerPack,
    int? cigarettesPerPack,
    String? displayName,
    String? avatarEmoji,
    String? currencyCode,
    List<String>? checkInDates,
    List<String>? relapseDates,
    int? relapseCount,
  }) {
    return UserProgress(
      quitDate: quitDate ?? this.quitDate,
      currentStreak: currentStreak ?? this.currentStreak,
      longestStreak: longestStreak ?? this.longestStreak,
      totalSmokeFreeDays: totalSmokeFreeDays ?? this.totalSmokeFreeDays,
      currentLevel: currentLevel ?? this.currentLevel,
      cigarettesAvoided: cigarettesAvoided ?? this.cigarettesAvoided,
      moneySaved: moneySaved ?? this.moneySaved,
      dailyGoalCompleted: dailyGoalCompleted ?? this.dailyGoalCompleted,
      completedMissionsToday: completedMissionsToday ?? this.completedMissionsToday,
      lastActiveDate: lastActiveDate ?? this.lastActiveDate,
      isOnboardingCompleted: isOnboardingCompleted ?? this.isOnboardingCompleted,
      cigarettesPerDayBefore: cigarettesPerDayBefore ?? this.cigarettesPerDayBefore,
      pricePerPack: pricePerPack ?? this.pricePerPack,
      cigarettesPerPack: cigarettesPerPack ?? this.cigarettesPerPack,
      displayName: displayName ?? this.displayName,
      avatarEmoji: avatarEmoji ?? this.avatarEmoji,
      currencyCode: currencyCode ?? this.currencyCode,
      checkInDates: checkInDates ?? this.checkInDates,
      relapseDates: relapseDates ?? this.relapseDates,
      relapseCount: relapseCount ?? this.relapseCount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quitDate': quitDate?.toIso8601String(),
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
      'totalSmokeFreeDays': totalSmokeFreeDays,
      'currentLevel': currentLevel,
      'cigarettesAvoided': cigarettesAvoided,
      'moneySaved': moneySaved,
      'dailyGoalCompleted': dailyGoalCompleted,
      'completedMissionsToday': completedMissionsToday,
      'lastActiveDate': lastActiveDate.toIso8601String(),
      'isOnboardingCompleted': isOnboardingCompleted,
      'cigarettesPerDayBefore': cigarettesPerDayBefore,
      'pricePerPack': pricePerPack,
      'cigarettesPerPack': cigarettesPerPack,
      'displayName': displayName,
      'avatarEmoji': avatarEmoji,
      'currencyCode': currencyCode,
      'checkInDates': checkInDates,
      'relapseDates': relapseDates,
      'relapseCount': relapseCount,
    };
  }

  factory UserProgress.fromJson(Map<String, dynamic> json) {
    return UserProgress(
      quitDate: json['quitDate'] != null ? DateTime.parse(json['quitDate']) : null,
      currentStreak: json['currentStreak'] ?? 0,
      longestStreak: json['longestStreak'] ?? 0,
      totalSmokeFreeDays: json['totalSmokeFreeDays'] ?? 0,
      currentLevel: json['currentLevel'] ?? 1,
      cigarettesAvoided: json['cigarettesAvoided'] ?? 0,
      moneySaved: (json['moneySaved'] ?? 0).toDouble(),
      dailyGoalCompleted: json['dailyGoalCompleted'] ?? 0,
      completedMissionsToday: List<String>.from(json['completedMissionsToday'] ?? []),
      lastActiveDate: json['lastActiveDate'] != null
          ? DateTime.parse(json['lastActiveDate'])
          : DateTime.now(),
      isOnboardingCompleted: json['isOnboardingCompleted'] ?? false,
      cigarettesPerDayBefore: (json['cigarettesPerDayBefore'] ?? 10).toDouble(),
      pricePerPack: (json['pricePerPack'] ?? 5.0).toDouble(),
      cigarettesPerPack: json['cigarettesPerPack'] ?? 20,
      displayName: json['displayName'] ?? '',
      avatarEmoji: json['avatarEmoji'] ?? '🌿',
      currencyCode: json['currencyCode'] ?? 'RUB',
      checkInDates: List<String>.from(json['checkInDates'] ?? []),
      relapseDates: List<String>.from(json['relapseDates'] ?? []),
      relapseCount: json['relapseCount'] ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        quitDate,
        currentStreak,
        longestStreak,
        totalSmokeFreeDays,
        currentLevel,
        cigarettesAvoided,
        moneySaved,
        dailyGoalCompleted,
        completedMissionsToday,
        lastActiveDate,
        isOnboardingCompleted,
        cigarettesPerDayBefore,
        pricePerPack,
        cigarettesPerPack,
        displayName,
        avatarEmoji,
        currencyCode,
        checkInDates,
        relapseDates,
        relapseCount,
      ];
}
