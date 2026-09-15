# RevenueCat — настройка для Puffree

## Что уже сделано в коде

- `PremiumBloc` подключён к `purchases_flutter`
- Offering: `default`
- Package: `$rc_monthly` / product: `todome_premium_monthly`
- Entitlement: `premium`
- Локальный триал 3 дня (один раз)
- Покупка + восстановление покупок
- Красивый Premium-экран

## Что нужно сделать тебе

### 1. API Keys

RevenueCat → Project Settings → API Keys

Скопируй:
- **Apple** public key (`appl_...`)
- **Google** public key (`goog_...`) — когда будешь в Google Play

Вставь в файл:

`lib/core/constants/revenuecat_config.dart`

```dart
static const String appleApiKey = 'appl_XXXX';
static const String googleApiKey = 'goog_XXXX';
```

### 2. Entitlement

В RevenueCat создай entitlement с ID:

```
premium
```

Привяжи к нему продукт `todome_premium_monthly` (или новый `puffree_premium_monthly`).

### 3. App Store Connect

1. Создай приложение **Puffree** (Bundle ID уникальный)
2. Subscriptions → создай подписку
   - Product ID: `todome_premium_monthly` (или новый, тогда обнови в коде)
   - Длительность: 1 month
   - Цена: на твой выбор
3. Можно добавить **Free Trial 3 days** прямо в App Store (Introductory Offer) — это надёжнее, чем только локальный триал

### 4. Связка RevenueCat ↔ App Store

RevenueCat → Apps → iOS:
- Bundle ID = твой Bundle ID
- App Store Connect Shared Secret / In-App Purchase Key

Products:
- Добавь `todome_premium_monthly`
- Положи в Offering `default` как package `$rc_monthly`

### 5. Переименование Todome → Puffree

Как планировал:
- В RevenueCat можно переименовать display name приложения
- Product ID в сторе менять осторожно (лучше новый product + обновить код)
- В коде сейчас:
  - `monthlyProductId = 'todome_premium_monthly'`
  - `monthlyPackageId = '$rc_monthly'`

### 6. Apple Developer (твой аккаунт)

- Account Holder: Ravan Musayev
- Team ID: `2V3Y362DYW`

В Xcode / App Store Connect используй эту команду (Team) при создании App ID и provisioning.

**Не публикуй** Shared Secret, API Secret и приватные ключи в открытый код.

### 7. Тест

1. Вставь API key
2. `flutter run` на реальном iPhone (или TestFlight)
3. Sandbox-аккаунт Apple для тестовой покупки
4. Проверь:
   - «3 дня бесплатно» (локальный триал)
   - «Подписаться» (StoreKit / RevenueCat)
   - «Восстановить покупки»

## Offering из твоего аккаунта

| Поле | Значение |
|------|----------|
| Offering | default |
| Package | $rc_monthly |
| Product | todome_premium_monthly |
| REST ID | ofrng2844413e89 |

После переименования проекта просто обнови product id в `revenuecat_config.dart` при необходимости.
