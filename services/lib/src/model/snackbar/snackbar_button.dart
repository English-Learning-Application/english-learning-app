import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../services.dart';

part 'snackbar_button.freezed.dart';

@freezed
class SnackBarButton with _$SnackBarButton {
  const SnackBarButton._();

  const factory SnackBarButton({
    required String label,
    required Func0<void> onPressed,
  }) = _SnackBarButton;
}
