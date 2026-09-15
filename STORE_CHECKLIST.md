# Puffree — Чеклист перед публикацией

## 1. Обязательно поменять

### Android
Файл: `android/app/build.gradle` (или `build.gradle.kts`)

```gradle
defaultConfig {
    applicationId "com.yourcompany.puffree"   // ← уникальный ID
    minSdk 21
    targetSdk 34
    versionCode 1
    versionName "1.0.0"
}
```

Файл: `android/app/src/main/AndroidManifest.xml`

```xml
<application
    android:label="Puffree"
    android:icon="@mipmap/ic_launcher"
    ...>
```

### iOS
Файл: `ios/Runner/Info.plist`

- `CFBundleDisplayName` → `Puffree`
- `CFBundleIdentifier` → уникальный Bundle ID

---

## 2. Иконка приложения

1. Сделай иконку 1024×1024 (PNG, без прозрачности для App Store)
2. Используй пакет:
```bash
flutter pub add flutter_launcher_icons --dev
```

В `pubspec.yaml` добавь:

```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/images/app_icon.png"
  adaptive_icon_background: "#0F766E"
  adaptive_icon_foreground: "assets/images/app_icon_foreground.png"
```

Потом:
```bash
dart run flutter_launcher_icons
```

---

## 3. Splash Screen (нативный)

Рекомендуется пакет `flutter_native_splash`:

```bash
flutter pub add flutter_native_splash --dev
```

---

## 4. Privacy Policy (обязательно)

Нужна ссылка на политику конфиденциальности:
- Сайт или Notion / GitHub Pages
- Укажи: какие данные собираются (локально / аналитика / покупки)
- Для Puffree: данные хранятся локально на устройстве, покупки через App Store / Google Play

Вставь ссылку в:
- Настройки → Политика конфиденциальности
- App Store Connect / Google Play Console

---

## 5. Описание для сторов (готовые тексты)

### Короткое описание (80 символов)
```
Puffree — бросай курить с уровнями, мотивацией и поддержкой каждый день
```

### Полное описание (черновик)
```
Puffree помогает бросить курить шаг за шагом.

• Система уровней — каждый день без сигареты открывает новый уровень
• Ежедневные задания и мотивация
• Помощь при тяге (таймер 3 минуты + советы)
• Отслеживание сэкономленных денег и сигарет
• Прогресс восстановления организма

Без давления. С поддержкой. В своём темпе.

Puffree — мотивационное приложение. Не является медицинским средством.
```

### Ключевые слова (App Store)
```
quit smoking, stop smoking, smoke free, nicotine, habit tracker, motivation, health
```

---

## 6. Возрастной рейтинг

- App Store: обычно 4+ или 12+ (упоминание курения)
- Google Play: «Rated for 3+» или по содержанию

Укажи, что приложение **против курения**, а не продвигает его.

---

## 7. Покупки (RevenueCat)

1. Создай аккаунт на revenuecat.com
2. Подключи App Store Connect + Google Play
3. Создай entitlement: `premium`
4. Создай products: weekly / monthly / yearly
5. Вставь API keys в код (PremiumBloc)

Пробный период 3 дня уже реализован локально.  
Для реального триала настрой Introductory Offer в сторах.

---

## 8. Дисклеймер (уже есть в приложении)

Текст:
> Puffree — мотивационное приложение. Оно не является медицинским средством и не заменяет консультацию врача. При сильной никотиновой зависимости обратитесь к специалисту.

Это важно для прохождения модерации.

---

## 9. Перед отправкой

- [ ] Уникальный applicationId / Bundle ID
- [ ] Иконка 1024×1024
- [ ] Название «Puffree» везде
- [ ] Privacy Policy ссылка
- [ ] Скриншоты (телефон + желательно планшет)
- [ ] Описание на нужных языках
- [ ] Тест покупок (sandbox)
- [ ] Проверка на реальном устройстве
- [ ] versionCode / versionName обновлены

---

## 10. Скриншоты — что показать

1. Главный экран с уровнем
2. Экран заданий
3. Помощь при тяге (таймер)
4. Прогресс / статистика
5. Premium экран
