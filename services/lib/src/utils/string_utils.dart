extension StringExtensions on String {
  String plus(String value) => this + value;

  bool equalsIgnoreCase(String value) =>
      toLowerCase().contains(value.toLowerCase());

  String? getNullable() => isEmpty ? null : this;
}
