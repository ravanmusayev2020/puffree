import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

/// Начальное состояние
class AuthInitial extends AuthState {}

/// Загрузка (показываем спиннер)
class AuthLoading extends AuthState {}

/// Пользователь успешно авторизован
class Authenticated extends AuthState {
  final User user;

  const Authenticated({required this.user});

  @override
  List<Object?> get props => [user];
}

/// Пользователь не авторизован (экран логина)
class Unauthenticated extends AuthState {}

/// Ссылка для сброса пароля отправлена
class AuthPasswordResetSent extends AuthState {}

/// Произошла ошибка
class AuthFailure extends AuthState {
  final String message;

  const AuthFailure({required this.message});

  @override
  List<Object?> get props => [message];
}