import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@LazySingleton()
class RefreshTokenApiClient extends RestApiClient {
  RefreshTokenApiClient(
    AccessTokenInterceptor accessTokenInterceptor,
    HeaderInterceptor headerInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            interceptors: [
              accessTokenInterceptor,
              headerInterceptor,
            ],
            options: BaseOptions(
              baseUrl: UrlConstants.appApiBaseUrl,
            ),
          ),
        );
}
