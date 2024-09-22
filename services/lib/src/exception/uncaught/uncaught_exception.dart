import '../base/app_exception.dart';

class UncaughtException extends AppException {
  const UncaughtException(this.rootError) : super(AppExceptionType.uncaught);

  final Object? rootError;

  @override
  String toString() {
    return 'UncaughtException: $rootError';
  }
}
