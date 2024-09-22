import 'dart:io';

import 'package:dio/dio.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

class DioExceptionMapper extends ExceptionMapper<RemoteException> {
  DioExceptionMapper(this._errorResponseMapper);

  final BaseErrorResponseMapper<dynamic> _errorResponseMapper;

  @override
  RemoteException map(Object? exception) {
    if (exception is RemoteException) {
      return exception;
    }

    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return const RemoteException(kind: RemoteExceptionKind.cancellation);
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return RemoteException(
            kind: RemoteExceptionKind.timeout,
            rootException: exception,
          );

        case DioExceptionType.badResponse:
          final httpErrorCode = exception.response?.statusCode ?? -1;
          if (exception.response?.data != null) {
            final serverError =
                _errorResponseMapper.map(exception.response?.data);
            return RemoteException(
              kind: RemoteExceptionKind.serverDefined,
              rootException: exception,
              serverError: serverError,
              httpErrorCode: httpErrorCode,
            );
          }

          return RemoteException(
            kind: RemoteExceptionKind.serverDefined,
            rootException: exception,
            httpErrorCode: httpErrorCode,
          );
        case DioExceptionType.badCertificate:
          return RemoteException(
            kind: RemoteExceptionKind.badCertificate,
            rootException: exception,
          );
        case DioExceptionType.connectionError:
          return RemoteException(
            kind: RemoteExceptionKind.network,
            rootException: exception,
          );
        case DioExceptionType.unknown:
          if (exception.error is SocketException) {
            return RemoteException(
              kind: RemoteExceptionKind.network,
              rootException: exception,
            );
          } else if (exception.error is RemoteException) {
            return exception.error as RemoteException;
          }
      }
    }
    return RemoteException(
      kind: RemoteExceptionKind.unknown,
      rootException: exception,
    );
  }
}
