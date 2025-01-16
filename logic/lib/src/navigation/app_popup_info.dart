import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'app_popup_info.freezed.dart';

@freezed
class AppPopupInfo with _$AppPopupInfo {
  const factory AppPopupInfo.confirmDialog({
    @Default('') String message,
    Func0<void>? onPressed,
  }) = _ConfirmDialog;

  const factory AppPopupInfo.errorWithRetryDialog({
    @Default('') String message,
    Func0<void>? onPressed,
  }) = _ErrorWithRetryDialog;

  const factory AppPopupInfo.requireLoginDialog() = _RequireLoginDialog;

  const factory AppPopupInfo.messageDialog({
    @Default('') String message,
    Func0<void>? onPressed,
  }) = _MessageDialog;

  const factory AppPopupInfo.bottomSheet({
    required Widget child,
    required String title,
  }) = _BottomSheet;
}
