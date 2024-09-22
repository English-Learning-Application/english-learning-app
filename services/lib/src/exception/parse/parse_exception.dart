import '../../../services.dart';

class ParseException extends AppException {
  const ParseException(
    this.kind,
    this.rootException,
  ) : super(AppExceptionType.parse);
  final ParseExceptionKind kind;
  final Object? rootException;
}

enum ParseExceptionKind {
  invalidSourceFormat,
}
