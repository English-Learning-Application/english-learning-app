import '../../../services.dart';

class RemoteException extends AppException {
  final RemoteExceptionKind kind;
  final int? httpErrorCode;
  final ServerError? serverError;
  final Object? rootException;

  const RemoteException({
    required this.kind,
    this.httpErrorCode,
    this.serverError,
    this.rootException,
  }) : super(AppExceptionType.remote);

  int get generalServerStatusCode =>
      serverError?.generalServerStatusCode ??
      serverError?.errors.firstOrNull?.serverStatusCode ??
      -1;

  String? get generalServerErrorId =>
      serverError?.generalServerErrorId ??
      serverError?.errors.firstOrNull?.serverErrorId;

  String? get generalServerMessage =>
      serverError?.generalMessage ?? serverError?.errors.firstOrNull?.message;

  @override
  String toString() {
    return 'RemoteException{kind: $kind, httpErrorCode: $httpErrorCode, serverError: $serverError, rootException: $rootException}';
  }
}

enum RemoteExceptionKind {
  noInternet,

  /// Host not found
  network,

  /// Server has defined response
  serverDefined,

  /// Server has not defined response
  serverUndefined,

  /// Caused by an incorrect certificate as configured by [ValididateCertificate]
  badCertificate,

  /// Caused by an error while parsing JSON data
  decodeError,

  /// Refresh token failed
  refreshTokenFailed,

  /// Timeout
  timeout,

  /// Cancel
  cancellation,

  /// Unknown
  unknown,
}
