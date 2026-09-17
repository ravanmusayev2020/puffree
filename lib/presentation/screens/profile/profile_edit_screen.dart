import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/services/auth_service.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({
    super.key,
  });

  @override
  State<ProfileEditScreen> createState() =>
      _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final AuthService _authService = AuthService();
  final ImagePicker _imagePicker = ImagePicker();

  final TextEditingController _nameController =
  TextEditingController();

  File? _selectedImage;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();

    final user = FirebaseAuth.instance.currentUser;

    _nameController.text = user?.displayName ?? '';
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 1200,
        maxHeight: 1200,
      );

      // Пользователь нажал "Назад" / отменил выбор.
      if (pickedFile == null) {
        return;
      }

      final file = File(pickedFile.path);

      if (!await file.exists()) {
        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Не удалось получить выбранную фотографию'),
          ),
        );

        return;
      }

      if (!mounted) return;

      setState(() {
        _selectedImage = file;
      });
    } on PlatformException catch (e) {
      if (!mounted) return;

      debugPrint(
        'ImagePicker PlatformException: '
            'code=${e.code}, message=${e.message}, details=${e.details}',
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.message?.isNotEmpty == true
                ? e.message!
                : 'Не удалось открыть галерею',
          ),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('ImagePicker error: $e');
      debugPrintStack(stackTrace: stackTrace);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Произошла ошибка при выборе фотографии',
          ),
        ),
      );
    }
  }

  Future<void> _saveProfile() async {
    final name = _nameController.text.trim();

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Введите имя'),
        ),
      );
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      await _authService.updateProfile(
        name: name,
        imageFile: _selectedImage,
      );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Профиль успешно обновлён'),
        ),
      );

      Navigator.of(context).pop(true);
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Ошибка обновления профиля: $e',
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    final user = FirebaseAuth.instance.currentUser;
    final photoUrl = user?.photoURL;

    final backgroundColor = isDark
        ? AppColors.backgroundDark
        : AppColors.backgroundLight;

    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    // ----------------------------------------------------------
    // ВАЖНО:
    // Явно указываем ImageProvider<Object>?,
    // чтобы Dart не выводил Object?.
    // ----------------------------------------------------------

    ImageProvider<Object>? profileImage;

    if (_selectedImage != null) {
      profileImage = FileImage(_selectedImage!);
    } else if (photoUrl != null && photoUrl.isNotEmpty) {
      profileImage = NetworkImage(photoUrl);
    } else {
      profileImage = null;
    }

    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,

        title: Text(
          'Профиль',
          style: GoogleFonts.outfit(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: titleColor,
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            24,
            20,
            24,
            32,
          ),
          children: [
            // ==================================================
            // PROFILE PHOTO
            // ==================================================

            Center(
              child: GestureDetector(
                onTap: _isSaving ? null : _pickImage,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 66,

                      backgroundColor:
                      AppColors.primary.withValues(
                        alpha: 0.12,
                      ),

                      backgroundImage: profileImage,

                      child: profileImage == null
                          ? Icon(
                        Iconsax.profile,
                        size: 52,
                        color: AppColors.primary,
                      )
                          : null,
                    ),

                    // CAMERA BUTTON
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                        border: Border.all(
                          color: backgroundColor,
                          width: 3,
                        ),
                      ),
                      child: const Icon(
                        Iconsax.camera,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            Center(
              child: Text(
                'Нажмите на фото, чтобы изменить',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
            ),

            const SizedBox(height: 36),

            // ==================================================
            // NAME
            // ==================================================

            Text(
              'Имя',
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: titleColor,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _nameController,
              enabled: !_isSaving,
              textInputAction: TextInputAction.done,

              decoration: InputDecoration(
                hintText: 'Введите имя',

                prefixIcon: const Icon(
                  Iconsax.user,
                ),

                filled: true,

                fillColor: isDark
                    ? AppColors.cardDark
                    : AppColors.cardLight,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none,
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none,
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide(
                    color: AppColors.primary,
                    width: 1.2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 28),

            // ==================================================
            // SAVE BUTTON
            // ==================================================

            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: _isSaving ? null : _saveProfile,

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor:
                  AppColors.primary.withValues(
                    alpha: 0.5,
                  ),
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),

                child: _isSaving
                    ? const SizedBox(
                  width: 23,
                  height: 23,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.3,
                    color: Colors.white,
                  ),
                )
                    : Text(
                  'Сохранить изменения',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}