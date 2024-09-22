import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../../data.dart';

class ApiClientDefaultSettings {
  const ApiClientDefaultSettings._();

  static const defaultErrorResponseMapperType = ErrorResponseMapperType.common;
  static const defaultSuccessResponseMapperType =
      SuccessResponseMapperType.dataResponse;

  static List<Interceptor> requiredInterceptors(Dio dio) => [
        if (kDebugMode) CustomLogInterceptor(),
        ConnectivityInterceptor(),
        RetryOnErrorInterceptor(dio),
      ];
}
