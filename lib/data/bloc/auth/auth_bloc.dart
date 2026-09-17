import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../services/auth_service.dart';
import 'aut_state.dart';
import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  StreamSubscription<User?>? _authStateSubscription;

  AuthBloc({required AuthService authService})
      : _authService = authService,
        super(AuthInitial()) {
    // Обработчики внешних событий
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<AuthSignInWithEmailRequested>(_onSignInWithEmail);
    on<AuthSignUpWithEmailRequested>(_onSignUpWithEmail);
    on<AuthSignInWithGoogleRequested>(_onSignInWithGoogle);
    on<AuthSignInWithAppleRequested>(_onSignInWithApple);
    on<AuthResetPasswordRequested>(_onResetPassword);
    on<AuthSignOutRequested>(_onSignOut);

    // Внутренний обработчик изменений Firebase Auth
    on<_AuthUserChanged>(_onUserChanged);

    // Безопасная подписка на стрим авторизации через вызов add()
    _authStateSubscription = _authService.authStateChanges.listen((user) {
      add(_AuthUserChanged(user));
    });
  }

  void _onUserChanged(_AuthUserChanged event, Emitter<AuthState> emit) {
    if (event.user != null) {
      emit(Authenticated(user: event.user!));
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> _onAuthCheckRequested(
      AuthCheckRequested event,
      Emitter<AuthState> emit,
      ) async {
    final user = _authService.currentUser;
    if (user != null) {
      emit(Authenticated(user: user));
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> _onSignInWithEmail(
      AuthSignInWithEmailRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      await _authService.signInWithEmail(event.email, event.password);
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSignUpWithEmail(
      AuthSignUpWithEmailRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      await _authService.signUpWithEmail(
        name: event.name,
        email: event.email,
        password: event.password,
      );
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSignInWithGoogle(
      AuthSignInWithGoogleRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      final credential = await _authService.signInWithGoogle();
      if (credential == null) {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSignInWithApple(
      AuthSignInWithAppleRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      await _authService.signInWithApple();
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onResetPassword(
      AuthResetPasswordRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      await _authService.sendPasswordResetEmail(event.email);
      emit(AuthPasswordResetSent());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSignOut(
      AuthSignOutRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    await _authService.signOut();
    emit(Unauthenticated());
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }
}

/// Приватное событие для стрима авторизации
class _AuthUserChanged extends AuthEvent {
  final User? user;

  const _AuthUserChanged(this.user);

  @override
  List<Object?> get props => [user];
}