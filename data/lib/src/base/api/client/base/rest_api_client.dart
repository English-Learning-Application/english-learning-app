import 'package:dio/dio.dart';
import 'package:services/services.dart';

import '../../../../../data.dart';

enum RestApiMethod {
  get,
  post,
  put,
  delete,
  patch,
}

class RestApiClient {
  RestApiClient({
    this.successResponseMapperType =
        ApiClientDefaultSettings.defaultSuccessResponseMapperType,
    this.errorResponseMapperType =
        ApiClientDefaultSettings.defaultErrorResponseMapperType,
    required this.dio,
  });

  final SuccessResponseMapperType successResponseMapperType;
  final ErrorResponseMapperType errorResponseMapperType;
  final Dio dio;

  Future<T?> request<D extends Object, T extends Object>({
    required RestApiMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    ErrorResponseMapperType? errorResponseMapperType,
    Options? options,
  }) async {
    try {
      final resp = await _requestByMethod(
        method: method,
        path: path.startsWith(dio.options.baseUrl)
            ? path.substring(dio.options.baseUrl.length)
            : path,
        queryParameters: queryParameters,
        body: body,
        options: Options(
          headers: options?.headers,
          contentType: options?.contentType,
          responseType: options?.responseType,
          receiveTimeout: options?.receiveTimeout,
          sendTimeout: options?.sendTimeout,
        ),
      );

      if (resp.data == null) {
        return null;
      }

      return BaseSuccessResponseMapper<D, T>.fromType(
        successResponseMapperType ?? this.successResponseMapperType,
      ).map(
        response: resp.data,
        decoder: decoder,
      );
    } catch (e) {
      throw DioExceptionMapper(
        BaseErrorResponseMapper.fromType(
          errorResponseMapperType ?? this.errorResponseMapperType,
        ),
      ).map(e);
    }
  }

  Future<Response<dynamic>> _requestByMethod({
    required RestApiMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Options? options,
  }) {
    switch (method) {
      case RestApiMethod.get:
        return dio.get(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestApiMethod.post:
        return dio.post(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestApiMethod.put:
        return dio.put(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestApiMethod.delete:
        return dio.delete(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestApiMethod.patch:
        return dio.patch(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
    }
  }
}
