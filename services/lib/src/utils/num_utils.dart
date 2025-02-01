import 'package:intl/intl.dart';

extension NumExtensions on num {
  num plus(num other) => this + other;
  num minus(num other) => this - other;
  num times(num other) => this * other;
  num div(num other) => this / other;

  bool isEquals(num other) => this == other;
  bool isNotEquals(num other) => this != other;
}

extension IntExtensions on int {
  int plus(int other) => this + other;
  int minus(int other) => this - other;
  int times(int other) => this * other;
  double div(int other) => this / other;
  int truncateDiv(int other) => this ~/ other;
  bool isEquals(int other) => this == other;
  bool isNotEquals(int other) => this != other;
}

extension DoubleExtensions on double {
  double plus(double other) => this + other;
  double minus(double other) => this - other;
  double times(double other) => this * other;
  double div(double other) => this / other;
  bool isEquals(double other) => this == other;
  bool isNotEquals(double other) => this != other;
}

class NumUtils {
  static String formatVietnameseCurrency(num value) {
    return NumberFormat('#,##0', 'vi_VN').format(value);
  }
}
