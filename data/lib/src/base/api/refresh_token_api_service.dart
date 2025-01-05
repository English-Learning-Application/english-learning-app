import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../data.dart';

@LazySingleton()
class RefreshTokenApiService {
  final RefreshTokenApiClient _refreshTokenApiClient;

  RefreshTokenApiService(this._refreshTokenApiClient);

  Future<DataResponse<ApiTokenData>?> refreshToken(
    String refreshToken,
  ) async {
    try {
      final resp = await _refreshTokenApiClient
          .request<ApiTokenData, DataResponse<ApiTokenData>>(
        method: RestApiMethod.post,
        path: AuthenticationEndpoints.authRefreshToken,
        body: {
          'refreshToken': refreshToken,
        },
        decoder: (json) => ApiTokenData.fromJson(
          json as Map<String, dynamic>,
        ),
      );

      return resp;
    } catch (e) {
      if (e is RemoteException &&
          (e.kind == RemoteExceptionKind.serverDefined ||
              e.kind == RemoteExceptionKind.serverUndefined ||
              e.kind == RemoteExceptionKind.unknown)) {
        throw const RemoteException(
          kind: RemoteExceptionKind.refreshTokenFailed,
        );
      }
      rethrow;
    }
  }
}
