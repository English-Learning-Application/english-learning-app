class RegexConstants {
  const RegexConstants._();

  /// Card number with spaces
  static const String cardNumber = '^[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}\$';

  /// CVC code
  static const String cvv = '^[0-9]{3}\$';

  /// Card expiry date
  static const String cardExpiry = '^(0[1-9]|1[0-2])\/[0-9]{2}\$';
}
