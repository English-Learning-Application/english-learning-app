import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../app.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    super.key,
    this.commonPopupType = PopUpType.adaptive,
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
  });

  const CommonDialog.android({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          key: key,
          commonPopupType: PopUpType.android,
          actions: actions,
          title: title,
          message: message,
        );

  const CommonDialog.ios({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          key: key,
          commonPopupType: PopUpType.ios,
          actions: actions,
          title: title,
          message: message,
        );

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          key: key,
          commonPopupType: PopUpType.adaptive,
          actions: actions,
          title: title,
          message: message,
        );

  final PopUpType commonPopupType;
  final List<PopupButton> actions;
  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return switch (commonPopupType) {
      PopUpType.android => _buildAndroidDialog(),
      PopUpType.ios => _buildIosDialog(),
      PopUpType.adaptive =>
        Platform.isIOS ? _buildIosDialog() : _buildAndroidDialog(),
    };
  }

  Widget _buildAndroidDialog() {
    return AlertDialog(
      title: title != null
          ? Text(
              title ?? '',
              style: AppTextStyles.s14w400primary(),
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: AppTextStyles.s14w400primary(),
            )
          : null,
      actions: actions.map((PopupButton button) {
        return TextButton(
          onPressed: () => button.onPressed?.call(),
          child: Text(
            button.text ?? S.current.ok,
            style: button.isDefault
                ? AppTextStyles.s14w400primary()
                : AppTextStyles.s14w400primary(),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildIosDialog() {
    return CupertinoAlertDialog(
      title: title != null
          ? Text(
              title ?? '',
              style: AppTextStyles.s14w400primary(),
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: AppTextStyles.s14w400primary(),
            )
          : null,
      actions: actions.map((PopupButton button) {
        return CupertinoDialogAction(
          onPressed: () => button.onPressed?.call(),
          child: Text(
            button.text ?? S.current.ok,
            style: button.isDefault
                ? AppTextStyles.s14w400primary()
                : AppTextStyles.s14w400primary(),
          ),
        );
      }).toList(),
    );
  }
}
