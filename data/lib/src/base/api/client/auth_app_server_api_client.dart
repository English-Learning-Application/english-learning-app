import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@LazySingleton()
class AuthAppServerApiClient extends RestApiClient {
  AuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
    RefreshTokenInterceptor refreshTokenInterceptor,
    DioCacheInterceptor dioCacheInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            interceptors: [
              headerInterceptor,
              accessTokenInterceptor,
              refreshTokenInterceptor,
              dioCacheInterceptor,
            ],
            options: BaseOptions(
              baseUrl: UrlConstants.appApiBaseUrl,
            ),
          ),
        );
}
