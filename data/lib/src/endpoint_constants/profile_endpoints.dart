class ProfileEndpoints {
  const ProfileEndpoints._();

  static const String sendEmailVerification =
      '/profile/send-email-verification';

  static const String verifyEmail = '/profile/verify-email';
  static const String sendPhoneVerification =
      '/profile/send-phone-verification';
  static const String verifyPhone = '/profile/verify-phone';
  static const String updateUserAvatar = '/profile/update-avatar';
  static const String updateUserProfile = '/profile/update-profile';
}
