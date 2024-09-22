import 'package:dio/dio.dart';

import '../../../data.dart';

class CustomLogInterceptor extends BaseInterceptor {
  CustomLogInterceptor();

  @override
  int get priority => BaseInterceptor.customLogPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logD('************ Request ************\n');
    logD('🌐 Request: ${options.method} ${options.uri}\n');
    if (options.headers.isNotEmpty) {
      logD('🌐 Request Headers:\n');
      logD('🌐 ${_prettyResponse(options.headers)}\n');
    }

    if (options.data != null) {
      logD('🌐 Request Body:\n');
      if (options.data is FormData) {
        final data = options.data as FormData;
        if (data.fields.isNotEmpty) {
          logD('🌐 Fields: ${_prettyResponse(data.fields)}\n');
        }
        if (data.files.isNotEmpty) {
          logD(
            '🌐 Files: ${_prettyResponse(data.files.map((e) => MapEntry(e.key, 'File name: ${e.value.filename}, Content type: ${e.value.contentType}, Length: ${e.value.length}')))}\n',
          );
        }
      } else {
        logD('🌐 ${_prettyResponse(options.data)}\n');
      }
    }
    handler.next(options);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    logD('************ Request Response ************\n');
    logD(
      '🎉 ${response.requestOptions.method} ${response.requestOptions.uri}\n',
    );
    logD('🎉 Request Body: ${_prettyResponse(response.requestOptions.data)}\n');
    logD('🎉 Success Code: ${response.statusCode}\n');
    logD('🎉 ${_prettyResponse(response.data)}\n');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logD('************ Request Error ************\n');
    logD('⛔️ ${err.requestOptions.method} ${err.requestOptions.uri}\n');
    logD(
        '⛔️ Error Code: ${err.response?.statusCode ?? 'unknown status code'}\n');
    logD('⛔️ Json: ${err.response}\n');

    handler.next(err);
  }

  String _prettyResponse(dynamic data) {
    if (data is Map) {
      return prettyJson(data as Map<String, dynamic>);
    }

    return data.toString();
  }
}
