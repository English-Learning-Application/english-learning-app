import '../../../services.dart';

mixin LogMixin on Object {
  void logD(String message, {DateTime? dateTime, String? objectRuntimeType}) {
    LogUtils.d(
      message,
      name: objectRuntimeType ?? runtimeType.toString(),
      dateTime: dateTime,
    );
  }

  void logE(
    Object? errorMessage, {
    Object? clazz,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? dateTime,
    String? objectRuntimeType,
  }) {
    LogUtils.e(
      errorMessage,
      name: objectRuntimeType ?? runtimeType.toString(),
      errorObject: errorObject,
      stackTrace: stackTrace,
      time: dateTime,
    );
  }

  String prettyJson(Map<String, dynamic> json) {
    return LogUtils.prettyJson(json);
  }
}
