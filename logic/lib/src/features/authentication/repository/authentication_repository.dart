import '../../../../logic.dart';

abstract class AuthenticationRepository {
  Future<void> registerUser({
    required String email,
    required String username,
    required String password,
  });

  Future<void> completeRegistration({
    required LearningLanguage learningLanguage,
    required LearningLanguage nativeLanguage,
    required List<LearningType> learningModes,
  });

  Future<void> resetPassword({
    String email = '',
    String phoneNumber = '',
  });

  Future<void> resetPasswordConfirmation({
    String email = '',
    String phoneNumber = '',
    required String code,
    required String newPassword,
  });

  Future<void> loginUser({
    required String email,
    required String password,
  });

  Future<void> googleLogin(
    String idToken,
  );

  Future<void> facebookLogin(
    String accessToken,
  );

  Future<void> getLoggedInUser();

  Future<void> saveAccessToken(String accessToken);

  Future<void> saveRefreshToken(String refreshToken);

  Future<bool> saveUserPreference(User user);

  Future<void> logout();
}
