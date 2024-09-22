import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:services/services.dart';

import '../../../../../data.dart';

class DioBuilder {
  DioBuilder._();

  static Dio createDio({
    BaseOptions? options,
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        connectTimeout:
            options?.connectTimeout ?? ServerTimeOutConstants.connectTimeout,
        receiveTimeout:
            options?.receiveTimeout ?? ServerTimeOutConstants.receiveTimeout,
        sendTimeout: options?.sendTimeout ?? ServerTimeOutConstants.sendTimeout,
        baseUrl: options?.baseUrl ?? UrlConstants.appApiBaseUrl,
      ),
    );

    final sortedInterceptors = [
      ...ApiClientDefaultSettings.requiredInterceptors(dio),
      ...interceptors,
    ].sortedByDescending(
      (element) => element is BaseInterceptor ? element.priority : -1,
    );

    dio.interceptors.addAll(sortedInterceptors);

    return dio;
  }
}
