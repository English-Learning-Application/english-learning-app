import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../data_source/api/authentication_api_data_source.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApiDataSource _authenticationApiDataSource;
  final AppPreferences _appPreferences;
  final ApiUserDataMapper _apiUserDataMapper;

  const AuthenticationRepositoryImpl(
    this._authenticationApiDataSource,
    this._appPreferences,
    this._apiUserDataMapper,
  );

  @override
  Future<void> registerUser({
    required String email,
    required String username,
    required String password,
  }) async {
    final tokenData = await _authenticationApiDataSource.registerUser(
      email: email,
      username: username,
      password: password,
    );

    await Future.wait([
      saveAccessToken(tokenData?.data?.accessToken ?? ''),
      saveRefreshToken(tokenData?.data?.refreshToken ?? ''),
    ]);
  }

  @override
  Future<void> logout() async {
    return await _appPreferences.clearCurrentUserData();
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _appPreferences.saveAccessToken(accessToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _appPreferences.saveRefreshToken(refreshToken);
  }

  @override
  Future<bool> saveUserPreference(User user) async {
    return await _appPreferences.saveCurrentUser(
      _apiUserDataMapper.mapToData(user),
    );
  }

  @override
  Future<void> getLoggedInUser() async {
    final userData = await _authenticationApiDataSource.getCurrentUser();
    await saveUserPreference(_apiUserDataMapper.mapToEntity(userData?.data));
  }

  @override
  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    final tokenData = await _authenticationApiDataSource.loginUser(
      email: email,
      password: password,
    );

    await Future.wait([
      saveAccessToken(tokenData?.data?.accessToken ?? ''),
      saveRefreshToken(tokenData?.data?.refreshToken ?? ''),
    ]);
  }

  @override
  Future<void> googleLogin(String idToken) async {
    final tokenData = await _authenticationApiDataSource.googleLogin(
      idToken: idToken,
    );

    await Future.wait([
      saveAccessToken(tokenData?.data?.accessToken ?? ''),
      saveRefreshToken(tokenData?.data?.refreshToken ?? ''),
    ]);
  }

  @override
  Future<void> facebookLogin(String accessToken) async {
    final tokenData = await _authenticationApiDataSource.facebookLogin(
      accessToken: accessToken,
    );

    await Future.wait([
      saveAccessToken(tokenData?.data?.accessToken ?? ''),
      saveRefreshToken(tokenData?.data?.refreshToken ?? ''),
    ]);
  }
}
