import 'dart:io';

import 'package:design/design.dart';
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
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d16.responsive()),
        side: BorderSide(
          color: AppColors.current.primaryColor,
          width: Dimens.d1.responsive(),
        ),
      ),
      backgroundColor: AppColors.current.backgroundColor,
      child: Container(
        height: Dimens.d160.responsive(),
        alignment: Alignment.center,
        padding: EdgeInsets.all(Dimens.d16.responsive()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: AppTextStyles.s14w400primary().font16().medium,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
            ],
            if (message != null) ...[
              Text(
                message ?? '',
                textAlign: TextAlign.center,
                style: AppTextStyles.s14w400primary().light,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
            ],
            if (actions.isNotEmpty) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions.map(
                  (PopupButton button) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.d8.responsive(),
                        ),
                        child: StandardButton(
                          onPressed: () => button.onPressed?.call(),
                          innerGap: 0,
                          leadingIconSize: 0,
                          trailingIconSize: 0,
                          buttonSize: ButtonSize.small,
                          text: button.text ?? S.current.ok,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildIosDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d16.responsive()),
        side: BorderSide(
          color: AppColors.current.primaryColor,
          width: Dimens.d1.responsive(),
        ),
      ),
      backgroundColor: AppColors.current.backgroundColor,
      child: Container(
        height: Dimens.d160.responsive(),
        alignment: Alignment.center,
        padding: EdgeInsets.all(Dimens.d16.responsive()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              Text(
                title ?? '',
                style: AppTextStyles.s14w400primary().font16().medium,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
            ],
            if (message != null) ...[
              Text(
                message ?? '',
                style: AppTextStyles.s14w400primary(),
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
            ],
            if (actions.isNotEmpty) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions.map((PopupButton button) {
                  return Expanded(
                    child: StandardButton(
                      onPressed: () => button.onPressed?.call(),
                      innerGap: 0,
                      leadingIconSize: 0,
                      trailingIconSize: 0,
                      buttonSize: ButtonSize.small,
                      text: button.text ?? S.current.ok,
                    ),
                  );
                }).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
