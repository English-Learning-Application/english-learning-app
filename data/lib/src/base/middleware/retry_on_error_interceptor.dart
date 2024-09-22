import 'package:dio/dio.dart';
import 'package:services/services.dart';

import '../../../data.dart';

class RetryOnErrorInterceptor extends BaseInterceptor {
  final Dio dio;

  RetryOnErrorInterceptor(this.dio);

  @override
  int get priority => BaseInterceptor.retryOnErrorPriority;

  static const String _retryHeaderKey = 'isRetry';
  static const String _retryCountKey = 'retryCount';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!options.headers.containsKey(_retryHeaderKey)) {
      options.headers[_retryCountKey] = RetryOnErrorConstants.maxRetries;
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    assert(err.requestOptions.headers[_retryCountKey] != null);
    final retryCount = err.requestOptions.headers[_retryCountKey] as int;
    if (retryCount > 0 && _shouldRetry(err)) {
      await Future.delayed(RetryOnErrorConstants.retryInterval);
      try {
        final resp = await dio.fetch<dynamic>(
          err.requestOptions
            ..headers[_retryHeaderKey] = true
            ..headers[_retryCountKey] = retryCount - 1,
        );
        return handler.resolve(resp);
      } catch (e) {
        super.onError(err, handler);
      }
    }
    super.onError(err, handler);
  }

  bool _shouldRetry(DioException exception) =>
      exception.type != DioExceptionType.cancel &&
      exception.type != DioExceptionType.badResponse;
}
