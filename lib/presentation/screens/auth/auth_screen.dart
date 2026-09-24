import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/services/auth_service.dart';
import '../../../l10n/app_localizations.dart';

enum AuthMode { login, register, forgotPassword }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthService _authService = AuthService();

  AuthMode _mode = AuthMode.login;
  bool _isLoading = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _switchMode(AuthMode newMode) {
    setState(() {
      _mode = newMode;
      _formKey.currentState?.reset();
    });
  }

  Future<void> _handleSubmit() async {
    final l10n = AppLocalizations.of(context)!;
    if (!_formKey.currentState!.validate()) return;

    FocusScope.of(context).unfocus();
    setState(() => _isLoading = true);

    try {
      if (_mode == AuthMode.login) {
        await _authService.signInWithEmail(
          _emailController.text.trim(),
          _passwordController.text,
        );
      } else if (_mode == AuthMode.register) {
        await _authService.signUpWithEmail(
          name: _nameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );
      } else if (_mode == AuthMode.forgotPassword) {
        await _authService.sendPasswordResetEmail(_emailController.text.trim());
        _showSuccessSnackBar(l10n.authResetLinkSent);
        _switchMode(AuthMode.login);
      }
    } catch (e) {
      _showErrorSnackBar(l10n.authErrorGeneric);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _handleSocialAuth(Future<void> Function() authMethod) async {
    final l10n = AppLocalizations.of(context)!;
    setState(() => _isLoading = true);
    try {
      await authMethod();
    } catch (e) {
      _showErrorSnackBar(l10n.authErrorSocial);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _showErrorSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600)),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  void _showSuccessSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600)),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: Stack(
        children: [
          // Background orbs
          Positioned(
            top: -80,
            right: -60,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.primary.withValues(alpha: isDark ? 0.35 : 0.20),
                    AppColors.primary.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -60,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.accent.withValues(alpha: isDark ? 0.25 : 0.15),
                    AppColors.accent.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo
                    Center(
                      child: Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: AppColors.levelGradient,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.4),
                              blurRadius: 32,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text('🔥', style: TextStyle(fontSize: 40)),
                        ),
                      ),
                    ).animate().scale(duration: 500.ms, curve: Curves.elasticOut),

                    const SizedBox(height: 20),

                    // Header
                    AnimatedSwitcher(
                      duration: 300.ms,
                      child: Column(
                        key: ValueKey(_mode),
                        children: [
                          Text(
                            _getHeaderTitle(l10n),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -1.0,
                              color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            _getHeaderSubtitle(l10n),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Tabs
                    if (_mode != AuthMode.forgotPassword)
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isDark ? AppColors.surfaceDark : AppColors.softLight,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: _TabButton(
                                label: l10n.authTabLogin,
                                isActive: _mode == AuthMode.login,
                                isDark: isDark,
                                onTap: () => _switchMode(AuthMode.login),
                              ),
                            ),
                            Expanded(
                              child: _TabButton(
                                label: l10n.authTabRegister,
                                isActive: _mode == AuthMode.register,
                                isDark: isDark,
                                onTap: () => _switchMode(AuthMode.register),
                              ),
                            ),
                          ],
                        ),
                      ).animate().fadeIn(delay: 200.ms),

                    const SizedBox(height: 20),

                    // Form card
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: isDark
                                ? AppColors.cardDark.withValues(alpha: 0.75)
                                : AppColors.cardLight.withValues(alpha: 0.85),
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: isDark
                                  ? Colors.white.withValues(alpha: 0.08)
                                  : AppColors.primary.withValues(alpha: 0.08),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.05),
                                blurRadius: 24,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Form(
                            key: _formKey,
                            child: AnimatedSize(
                              duration: 300.ms,
                              curve: Curves.easeInOut,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (_mode == AuthMode.register) ...[
                                    _CustomTextField(
                                      controller: _nameController,
                                      hintText: l10n.authNameHint,
                                      prefixIcon: Iconsax.user,
                                      isDark: isDark,
                                      validator: (val) =>
                                      val == null || val.trim().isEmpty ? l10n.authNameRequired : null,
                                    ),
                                    const SizedBox(height: 16),
                                  ],

                                  _CustomTextField(
                                    controller: _emailController,
                                    hintText: l10n.authEmailHint,
                                    prefixIcon: Iconsax.sms,
                                    keyboardType: TextInputType.emailAddress,
                                    isDark: isDark,
                                    validator: (val) {
                                      if (val == null || val.trim().isEmpty) return l10n.authEmailRequired;
                                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val.trim())) {
                                        return l10n.authEmailInvalid;
                                      }
                                      return null;
                                    },
                                  ),

                                  if (_mode != AuthMode.forgotPassword) ...[
                                    const SizedBox(height: 16),
                                    _CustomTextField(
                                      controller: _passwordController,
                                      hintText: l10n.authPasswordHint,
                                      prefixIcon: Iconsax.lock,
                                      obscureText: !_isPasswordVisible,
                                      isDark: isDark,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
                                          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                                          size: 20,
                                        ),
                                        onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                                      ),
                                      validator: (val) {
                                        if (val == null || val.isEmpty) return l10n.authPasswordRequired;
                                        if (val.length < 6) return l10n.authPasswordMinLength;
                                        return null;
                                      },
                                    ),
                                  ],

                                  if (_mode == AuthMode.register) ...[
                                    const SizedBox(height: 16),
                                    _CustomTextField(
                                      controller: _confirmPasswordController,
                                      hintText: l10n.authConfirmPasswordHint,
                                      prefixIcon: Iconsax.lock_1,
                                      obscureText: !_isConfirmPasswordVisible,
                                      isDark: isDark,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isConfirmPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
                                          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                                          size: 20,
                                        ),
                                        onPressed: () =>
                                            setState(() => _isConfirmPasswordVisible = !_isConfirmPasswordVisible),
                                      ),
                                      validator: (val) {
                                        if (val != _passwordController.text) return l10n.authPasswordsDoNotMatch;
                                        return null;
                                      },
                                    ),
                                  ],

                                  if (_mode == AuthMode.login) ...[
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () => _switchMode(AuthMode.forgotPassword),
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                        ),
                                        child: Text(
                                          l10n.authForgotPassword,
                                          style: GoogleFonts.inter(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.primary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ] else
                                    const SizedBox(height: 20),

                                  // Submit button
                                  Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: AppColors.primaryGradient),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.primary.withValues(alpha: 0.35),
                                          blurRadius: 16,
                                          offset: const Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                    child: ElevatedButton(
                                      onPressed: _isLoading ? null : _handleSubmit,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      ),
                                      child: _isLoading
                                          ? const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                                      )
                                          : Text(
                                        _getSubmitButtonText(l10n),
                                        style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),

                                  if (_mode == AuthMode.forgotPassword) ...[
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () => _switchMode(AuthMode.login),
                                      child: Text(
                                        l10n.authBackToLogin,
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.1),

                    // Social
                    if (_mode != AuthMode.forgotPassword) ...[
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(child: Divider(color: isDark ? Colors.white12 : Colors.black12)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              l10n.authOrContinueWith,
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: isDark ? Colors.white12 : Colors.black12)),
                        ],
                      ).animate().fadeIn(delay: 400.ms),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: _SocialIconButton(
                              icon: Iconsax.support,
                              label: l10n.authGoogle,
                              isDark: isDark,
                              onPressed: () => _handleSocialAuth(_authService.signInWithGoogle),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: _SocialIconButton(
                              icon: Icons.apple,
                              label: l10n.authApple,
                              isDark: isDark,
                              onPressed: () => _handleSocialAuth(_authService.signInWithApple),
                            ),
                          ),
                        ],
                      ).animate().fadeIn(delay: 450.ms),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getHeaderTitle(AppLocalizations l10n) {
    switch (_mode) {
      case AuthMode.login:
        return l10n.authWelcomeBack;
      case AuthMode.register:
        return l10n.authCreateAccount;
      case AuthMode.forgotPassword:
        return l10n.authResetPassword;
    }
  }

  String _getHeaderSubtitle(AppLocalizations l10n) {
    switch (_mode) {
      case AuthMode.login:
        return l10n.authLoginSubtitle;
      case AuthMode.register:
        return l10n.authRegisterSubtitle;
      case AuthMode.forgotPassword:
        return l10n.authForgotSubtitle;
    }
  }

  String _getSubmitButtonText(AppLocalizations l10n) {
    switch (_mode) {
      case AuthMode.login:
        return l10n.authLoginButton;
      case AuthMode.register:
        return l10n.authRegisterButton;
      case AuthMode.forgotPassword:
        return l10n.authSendLinkButton;
    }
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Custom widgets (unchanged)
// ═══════════════════════════════════════════════════════════════════════════

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.label,
    required this.isActive,
    required this.isDark,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final bool isDark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isActive ? (isDark ? AppColors.cardDark : Colors.white) : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: isActive
              ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ]
              : [],
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
            color: isActive
                ? (isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight)
                : (isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight),
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.isDark,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final bool isDark;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      style: GoogleFonts.inter(
        fontSize: 15,
        color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 14,
          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 20,
          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: isDark ? AppColors.surfaceDark : AppColors.softLight,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.error, width: 1.5),
        ),
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  const _SocialIconButton({
    required this.icon,
    required this.label,
    required this.isDark,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final bool isDark;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: isDark ? AppColors.cardDark : AppColors.cardLight,
          side: BorderSide(
            color: isDark ? Colors.white.withValues(alpha: 0.1) : Colors.black.withValues(alpha: 0.08),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}