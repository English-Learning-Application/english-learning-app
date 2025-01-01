import '../base/app_exception.dart';

class ValidationException extends AppException {
  final ValidationExceptionKind kind;

  const ValidationException(this.kind) : super(AppExceptionType.validation);

  @override
  String toString() {
    return 'ValidationException: $kind';
  }
}

enum ValidationExceptionKind {
  invalidUsername,
  invalidDateTime,
  invalidConfirmationPassword,
}
