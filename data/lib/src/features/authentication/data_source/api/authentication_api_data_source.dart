import 'package:injectable/injectable.dart';

import '../../../../../data.dart';

@lazySingleton
class AuthenticationApiDataSource {
  final NonAuthAppServerApiClient _nonAuthAppServerApiClient;

  const AuthenticationApiDataSource(this._nonAuthAppServerApiClient);

  Future<DataResponse<ApiTokenData>?> registerUser({
    required String email,
    required String username,
    required String password,
  }) async {
    return await _nonAuthAppServerApiClient.request(
      path: AuthenticationEndpoints.authRegistration,
      method: RestApiMethod.post,
      body: {
        'email': email,
        'username': username,
        'password': password,
      },
      decoder: (json) => ApiTokenData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiUserData>?> getCurrentUser() async {
    return await _nonAuthAppServerApiClient.request(
      path: AuthenticationEndpoints.authCurrentUser,
      method: RestApiMethod.get,
      decoder: (json) => ApiUserData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiTokenData>?> loginUser({
    required String email,
    required String password,
  }) async {
    return await _nonAuthAppServerApiClient.request(
      path: AuthenticationEndpoints.authLogin,
      method: RestApiMethod.post,
      body: {
        'email': email,
        'password': password,
      },
      decoder: (json) => ApiTokenData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiTokenData>?> googleLogin({
    required String idToken,
  }) async {
    return await _nonAuthAppServerApiClient.request(
      path: AuthenticationEndpoints.authGoogleLogin,
      method: RestApiMethod.post,
      body: {
        'idToken': idToken,
      },
      decoder: (json) => ApiTokenData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiTokenData>?> facebookLogin({
    required String accessToken,
  }) async {
    return await _nonAuthAppServerApiClient.request(
      path: AuthenticationEndpoints.authFacebookLogin,
      method: RestApiMethod.post,
      body: {
        'accessToken': accessToken,
      },
      decoder: (json) => ApiTokenData.fromJson(json as Map<String, dynamic>),
    );
  }
}
