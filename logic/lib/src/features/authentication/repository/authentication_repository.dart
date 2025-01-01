import '../../../../logic.dart';

abstract class AuthenticationRepository {
  Future<void> registerUser({
    required String email,
    required String username,
    required String password,
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
