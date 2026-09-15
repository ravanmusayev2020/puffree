import 'package:intl/intl.dart';

class CurrencyOption {
  const CurrencyOption({
    required this.code,
    required this.name,
    required this.symbol,
    required this.flagEmoji,
  });

  final String code;
  final String name;
  final String symbol;
  final String flagEmoji;

  static const List<CurrencyOption> supported = [
    CurrencyOption(code: 'USD', name: 'US Dollar', symbol: '\$', flagEmoji: '🇺🇸'),
    CurrencyOption(code: 'EUR', name: 'Euro', symbol: '€', flagEmoji: '🇪🇺'),
    CurrencyOption(code: 'RUB', name: 'Russian Ruble', symbol: '₽', flagEmoji: '🇷🇺'),
    CurrencyOption(code: 'GBP', name: 'British Pound', symbol: '£', flagEmoji: '🇬🇧'),
    CurrencyOption(code: 'UAH', name: 'Ukrainian Hryvnia', symbol: '₴', flagEmoji: '🇺🇦'),
    CurrencyOption(code: 'KZT', name: 'Kazakhstani Tenge', symbol: '₸', flagEmoji: '🇰🇿'),
    CurrencyOption(code: 'BYN', name: 'Belarusian Ruble', symbol: 'Br', flagEmoji: '🇧🇾'),
    CurrencyOption(code: 'CNY', name: 'Chinese Yuan', symbol: '¥', flagEmoji: '🇨🇳'),
    CurrencyOption(code: 'JPY', name: 'Japanese Yen', symbol: '¥', flagEmoji: '🇯🇵'),
    CurrencyOption(code: 'CHF', name: 'Swiss Franc', symbol: 'CHF', flagEmoji: '🇨🇭'),
    CurrencyOption(code: 'AUD', name: 'Australian Dollar', symbol: '\$', flagEmoji: '🇦🇺'),
    CurrencyOption(code: 'CAD', name: 'Canadian Dollar', symbol: '\$', flagEmoji: '🇨🇦'),
    CurrencyOption(code: 'SEK', name: 'Swedish Krona', symbol: 'kr', flagEmoji: '🇸🇪'),
    CurrencyOption(code: 'NOK', name: 'Norwegian Krone', symbol: 'kr', flagEmoji: '🇳🇴'),
    CurrencyOption(code: 'DKK', name: 'Danish Krone', symbol: 'kr', flagEmoji: '🇩🇰'),
    CurrencyOption(code: 'PLN', name: 'Polish Zloty', symbol: 'zł', flagEmoji: '🇵🇱'),
    CurrencyOption(code: 'CZK', name: 'Czech Koruna', symbol: 'Kč', flagEmoji: '🇨🇿'),
    CurrencyOption(code: 'TRY', name: 'Turkish Lira', symbol: '₺', flagEmoji: '🇹🇷'),
    CurrencyOption(code: 'INR', name: 'Indian Rupee', symbol: '₹', flagEmoji: '🇮🇳'),
    CurrencyOption(code: 'BRL', name: 'Brazilian Real', symbol: 'R\$', flagEmoji: '🇧🇷'),
    CurrencyOption(code: 'MXN', name: 'Mexican Peso', symbol: '\$', flagEmoji: '🇲🇽'),
    CurrencyOption(code: 'ARS', name: 'Argentine Peso', symbol: '\$', flagEmoji: '🇦🇷'),
    CurrencyOption(code: 'CLP', name: 'Chilean Peso', symbol: '\$', flagEmoji: '🇨🇱'),
    CurrencyOption(code: 'ZAR', name: 'South African Rand', symbol: 'R', flagEmoji: '🇿🇦'),
    CurrencyOption(code: 'AED', name: 'UAE Dirham', symbol: 'د.إ', flagEmoji: '🇦🇪'),
    CurrencyOption(code: 'SAR', name: 'Saudi Riyal', symbol: '﷼', flagEmoji: '🇸🇦'),
    CurrencyOption(code: 'EGP', name: 'Egyptian Pound', symbol: 'E£', flagEmoji: '🇪🇬'),
    CurrencyOption(code: 'KRW', name: 'South Korean Won', symbol: '₩', flagEmoji: '🇰🇷'),
    CurrencyOption(code: 'THB', name: 'Thai Baht', symbol: '฿', flagEmoji: '🇹🇭'),
    CurrencyOption(code: 'VND', name: 'Vietnamese Dong', symbol: '₫', flagEmoji: '🇻🇳'),
    CurrencyOption(code: 'IDR', name: 'Indonesian Rupiah', symbol: 'Rp', flagEmoji: '🇮🇩'),
    CurrencyOption(code: 'MYR', name: 'Malaysian Ringgit', symbol: 'RM', flagEmoji: '🇲🇾'),
    CurrencyOption(code: 'SGD', name: 'Singapore Dollar', symbol: '\$', flagEmoji: '🇸🇬'),
    CurrencyOption(code: 'HKD', name: 'Hong Kong Dollar', symbol: 'HK\$', flagEmoji: '🇭🇰'),
    CurrencyOption(code: 'NZD', name: 'New Zealand Dollar', symbol: '\$', flagEmoji: '🇳🇿'),
  ];

  static CurrencyOption fromCode(String code) {
    return supported.firstWhere(
      (currency) => currency.code == code,
      orElse: () => supported.first,
    );
  }

  static String formatPrice(
    double value, {
    required String code,
    String locale = 'ru',
  }) {
    final currency = fromCode(code);
    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: currency.symbol,
      decimalDigits: 0,
    );
    return formatter.format(value);
  }
}
