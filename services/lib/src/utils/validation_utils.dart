class ValidationUtils {
  const ValidationUtils._();

  static bool isValidPassword(String password) => password.isNotEmpty;

  static bool isEmptyPhoneNumber(String phoneNumber) => phoneNumber.isNotEmpty;

  static bool isValidPhoneNumber(String phoneNumber) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,11}$)').hasMatch(phoneNumber.trim());

  static bool isValidVietnamesePhoneNumber(String phoneNumber) =>
      RegExp(r'^(3[2-9]|5[2689]|7[0-9]|8[1-9]|9[0-9])\d{7}$')
          .hasMatch(phoneNumber.trim());

  static bool isEmptyEmail(String email) => email.isNotEmpty;

  static bool isValidEmail(String email) =>
      RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$').hasMatch(
        email.trim(),
      );

  static bool isEmptyDateTime(String dateTime) => dateTime.isNotEmpty;

  static bool isValidDateTime(String dateTime) => RegExp(
        r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$',
      ).hasMatch(dateTime);

  static bool isAlphaNumeric(String value) =>
      RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value.trim());

  static bool isLink(String text) => Uri.parse(text).isAbsolute;
}
