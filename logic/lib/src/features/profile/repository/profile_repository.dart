import '../../../../logic.dart';

abstract class ProfileRepository {
  Future<void> sendEmailVerification();

  Future<void> verifyEmail(String otp);

  Future<void> sendPhoneVerification(String phoneNumber);

  Future<void> verifyPhone(String otp);

  Future<void> updateUserAvatar(
    String fileAssetPath,
  );

  Future<void> updateUserProfile({
    required String username,
    required LearningLanguage learningLanguage,
    required LearningLanguage nativeLanguage,
    required List<LearningType> learningModes,
  });

  Future<bool> updatePassword({
    required String oldPassword,
    required String newPassword,
  });
}
