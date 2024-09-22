import '../../../services.dart';

class CancelException extends AppException {
  const CancelException(
    this.kind,
    this.rootException,
  ) : super(AppExceptionType.cancel);
  final CancelExceptionKind kind;
  final Object? rootException;
}

enum CancelExceptionKind {
  loginCancel,
}
