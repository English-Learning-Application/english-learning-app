import '../../localization.dart';

extension LocalizationExtension on String {
  String get localized {
    // Fixed Localization
    switch (this) {
      case 'error_1':
        return S.current.error1;
      default:
        return this;
    }
  }
}
