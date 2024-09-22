import '../../services.dart';

T run<T>(T Function() block) {
  return block();
}

extension ObjectUtils<T> on T? {
  R? safeCast<R>() {
    final that = this;
    if (that is R) {
      return that;
    }

    LogUtils.e('Error: safeCast: $this is not $R');
    return null;
  }

  R? let<R>(R Function(T) block) {
    final that = this;
    if (that != null) {
      return block(that);
    }

    return null;
  }
}

T? safeCast<T>(dynamic value) {
  if (value is T) {
    return value;
  }

  LogUtils.e('Error: safeCast: $value is not $T');
  return null;
}

extension ObjectExtension on Object? {
  bool isNull() => this == null;
  bool isNotNull() => this != null;
}
