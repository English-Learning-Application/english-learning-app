import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'popup_button.freezed.dart';

@freezed
class PopupButton with _$PopupButton {
  const PopupButton._();

  const factory PopupButton({
    String? text,
    Func0<void>? onPressed,
    @Default(false) bool isDefault,
  }) = _PopupButton;
}
