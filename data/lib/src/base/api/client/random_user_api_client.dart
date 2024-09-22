import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@LazySingleton()
class RandomUserApiClient extends RestApiClient {
  RandomUserApiClient(
    DioCacheInterceptor dioCacheInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            interceptors: [
              dioCacheInterceptor,
            ],
            options: BaseOptions(
              baseUrl: UrlConstants.randomUserBaseUrl,
            ),
          ),
        );
}
