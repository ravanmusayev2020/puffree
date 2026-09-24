import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  /// Текущий пользователь
  User? get currentUser => _auth.currentUser;

  /// Стрим изменений состояния авторизации
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  /// Вход по Email и паролю
  Future<UserCredential?> signInWithEmail(
      String email,
      String password,
      ) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      log('Ошибка входа по Email: $e');
      rethrow;
    }
  }

  /// Регистрация по Email и паролю
  Future<UserCredential?> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;

      if (user != null && name.trim().isNotEmpty) {
        await user.updateDisplayName(name.trim());
        await user.reload();
      }

      return userCredential;
    } catch (e) {
      log('Ошибка регистрации: $e');
      rethrow;
    }
  }

  /// Сброс пароля по Email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(
        email: email,
      );
    } catch (e) {
      log('Ошибка сброса пароля: $e');
      rethrow;
    }
  }

  /// Вход через Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
      await _googleSignIn.signIn();

      if (googleUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final OAuthCredential credential =
      GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      log('Ошибка входа через Google: $e');
      rethrow;
    }
  }

  /// Вход через Apple
  Future<UserCredential?> signInWithApple() async {
    try {
      final AuthorizationCredentialAppleID appleCredential =
      await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final identityToken = appleCredential.identityToken;

      if (identityToken == null || identityToken.isEmpty) {
        throw Exception('Apple не вернул identityToken');
      }

      final OAuthProvider appleProvider = OAuthProvider('apple.com');

      final OAuthCredential credential = appleProvider.credential(
        idToken: identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final UserCredential userCredential =
      await _auth.signInWithCredential(credential);

      // Apple возвращает имя только при первом входе.
      // Сохраняем его в Firebase, если оно пришло.
      final user = userCredential.user;

      if (user != null) {
        final fullName = appleCredential.givenName != null ||
            appleCredential.familyName != null
            ? [
          appleCredential.givenName,
          appleCredential.familyName,
        ].whereType<String>().where((e) => e.isNotEmpty).join(' ')
            : '';

        if (fullName.isNotEmpty &&
            (user.displayName == null || user.displayName!.isEmpty)) {
          await user.updateDisplayName(fullName);
          await user.reload();
        }
      }

      return userCredential;
    } on SignInWithAppleAuthorizationException catch (e) {
      log(
        'Apple авторизация завершена: '
            'code=${e.code}, message=${e.message}',
      );

      // Пользователь отменил авторизацию
      if (e.code == AuthorizationErrorCode.canceled) {
        return null;
      }

      rethrow;
    } catch (e, stackTrace) {
      log(
        'Ошибка входа через Apple: $e',
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }


  /// Обновление имени профиля
  Future<User?> updateDisplayName(String name) async {
    try {
      final user = _auth.currentUser;

      if (user == null) {
        throw Exception('Пользователь не авторизован');
      }

      await user.updateDisplayName(name.trim());
      await user.reload();

      return _auth.currentUser;
    } catch (e) {
      log('Ошибка обновления имени: $e');
      rethrow;
    }
  }

  /// Загрузка фотографии профиля в Firebase Storage
  Future<User?> updateProfilePhoto(File imageFile) async {
    try {
      final user = _auth.currentUser;

      if (user == null) {
        throw Exception('Пользователь не авторизован');
      }

      final storageReference = FirebaseStorage.instance
          .ref()
          .child('profile_photos')
          .child('${user.uid}.jpg');

      await storageReference.putFile(
        imageFile,
        SettableMetadata(
          contentType: 'image/jpeg',
        ),
      );

      final downloadUrl =
      await storageReference.getDownloadURL();

      await user.updatePhotoURL(downloadUrl);
      await user.reload();

      return _auth.currentUser;
    } catch (e) {
      log('Ошибка обновления фотографии: $e');
      rethrow;
    }
  }

  /// Обновление имени и фотографии одновременно
  Future<User?> updateProfile({
    required String name,
    File? imageFile,
  }) async {
    try {
      final user = _auth.currentUser;

      if (user == null) {
        throw Exception('Пользователь не авторизован');
      }

      if (name.trim().isNotEmpty) {
        await user.updateDisplayName(name.trim());
      }

      if (imageFile != null) {
        final storageReference = FirebaseStorage.instance
            .ref()
            .child('profile_photos')
            .child('${user.uid}.jpg');

        await storageReference.putFile(
          imageFile,
          SettableMetadata(
            contentType: 'image/jpeg',
          ),
        );

        final downloadUrl =
        await storageReference.getDownloadURL();

        await user.updatePhotoURL(downloadUrl);
      }

      await user.reload();

      return _auth.currentUser;
    } catch (e) {
      log('Ошибка обновления профиля: $e');
      rethrow;
    }
  }

  /// Выход из аккаунта
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
    } catch (e) {
      log('Ошибка при выходе: $e');
      rethrow;
    }
  }
}