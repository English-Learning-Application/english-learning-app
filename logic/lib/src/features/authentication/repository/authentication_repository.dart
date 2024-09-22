import '../../../../logic.dart';

abstract class AuthenticationRepository {
  Future<void> getLoggedInUser();

  Future<void> saveAccessToken(String accessToken);

  Future<void> saveRefreshToken(String refreshToken);

  Future<bool> saveUserPreference(User user);

  Future<void> logout();
}
