import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

/// Проверка текущего состояния авторизации при старте приложения
class AuthCheckRequested extends AuthEvent {}

/// Вход по Email и паролю
class AuthSignInWithEmailRequested extends AuthEvent {
  final String email;
  final String password;

  const AuthSignInWithEmailRequested({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

/// Регистрация по Email
class AuthSignUpWithEmailRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;

  const AuthSignUpWithEmailRequested({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];
}

/// Вход через Google
class AuthSignInWithGoogleRequested extends AuthEvent {}

/// Вход через Apple
class AuthSignInWithAppleRequested extends AuthEvent {}

/// Сброс пароля
class AuthResetPasswordRequested extends AuthEvent {
  final String email;

  const AuthResetPasswordRequested({required this.email});

  @override
  List<Object?> get props => [email];
}

/// Выход из аккаунта
class AuthSignOutRequested extends AuthEvent {}