import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../app.dart';

@LazySingleton(as: BasePopupInfoMapper)
class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appPopupInfo, AppNavigator appNavigator) {
    return appPopupInfo.when(
      bottomSheet: (child, title) {
        return CommonBottomSheet(
          title: title,
          child: child,
        );
      },
      confirmDialog: (msg, onPressed) {
        return CommonDialog(
          message: msg,
          actions: [
            PopupButton(
              text: S.current.cancel,
              onPressed: Func0(
                () => appNavigator.pop(),
              ),
            ),
            PopupButton(
              text: S.current.ok,
              isDefault: true,
              onPressed: onPressed ?? Func0(() => appNavigator.pop()),
            ),
          ],
        );
      },
      errorWithRetryDialog: (msg, onPressed) {
        return CommonDialog(
          message: msg,
          actions: [
            PopupButton(
              text: S.current.cancel,
              onPressed: Func0(
                () => appNavigator.pop(),
              ),
            ),
            PopupButton(
              text: S.current.retry,
              onPressed: onPressed ??
                  Func0(
                    () => appNavigator.pop(),
                  ),
              isDefault: true,
            ),
          ],
        );
      },
      requireLoginDialog: () {
        return CommonDialog.adaptive(
          title: S.current.login,
          message: S.current.login,
          actions: [
            PopupButton(
              text: S.current.cancel,
              onPressed: Func0(() => appNavigator.pop()),
            ),
            PopupButton(
              text: S.current.login,
              isDefault: true,
              onPressed: Func0(
                () async {
                  await appNavigator.pop();
                  await appNavigator.push(const AppRouteInfo.login());
                },
              ),
            ),
          ],
        );
      },
      messageDialog: (msg, onPress) {
        return CommonDialog.adaptive(
          message: msg,
          actions: [
            PopupButton(
              text: S.current.ok,
              isDefault: true,
              onPressed: Func0(
                () => appNavigator.pop(),
              ),
            ),
          ],
        );
      },
    );
  }
}
