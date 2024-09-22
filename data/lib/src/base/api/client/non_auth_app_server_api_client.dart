import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@LazySingleton()
class NonAuthAppServerApiClient extends RestApiClient {
  NonAuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(
              baseUrl: UrlConstants.appApiBaseUrl,
            ),
            interceptors: [headerInterceptor],
          ),
        );
}
