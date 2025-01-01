import '../../../services.dart';

class ServiceException extends AppException {
  final ServiceExceptionKind kind;
  final Object? rootError;

  const ServiceException({
    required this.kind,
    this.rootError,
  }) : super(AppExceptionType.service);

  @override
  String toString() {
    return 'ServiceException{kind: $kind, rootError: $rootError}';
  }
}

enum ServiceExceptionKind {
  /// In-app purchase error
  inAppPurchase,

  /// Google sign in error
  googleSignIn,

  /// Facebook sign in error
  facebookSignIn,
}
