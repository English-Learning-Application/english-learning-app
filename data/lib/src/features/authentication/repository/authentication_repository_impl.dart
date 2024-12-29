import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../data_source/api/authentication_api_data_source.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApiDataSource _authenticationApiDataSource;

  const AuthenticationRepositoryImpl(this._authenticationApiDataSource);

  @override
  Future<void> getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> saveAccessToken(String accessToken) {
    // TODO: implement saveAccessToken
    throw UnimplementedError();
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) {
    // TODO: implement saveRefreshToken
    throw UnimplementedError();
  }

  @override
  Future<bool> saveUserPreference(User user) {
    // TODO: implement saveUserPreference
    throw UnimplementedError();
  }
}
