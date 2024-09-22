import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../services.dart';

class ViewUtils {
  const ViewUtils._();

  static void showAppSnackBar(
    BuildContext context,
    String message, {
    Duration? duration,
    Color? backgroundColor,
    SnackBarButton? action,
  }) {
    final messengerState = ScaffoldMessenger.maybeOf(context);
    if (messengerState == null) return;

    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ?? DurationConstants.defaultSnackBarDuration,
        backgroundColor: backgroundColor,
        action: action == null
            ? null
            : SnackBarAction(
                label: action.label,
                onPressed: () => action.onPressed.call(),
              ),
      ),
    );
  }

  static void hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) {
    return SystemChrome.setPreferredOrientations(orientations);
  }

  static void setSystemUIOverlayStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }

  static Offset? getWidgetPosition(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;

    return renderBox.localToGlobal(Offset.zero);
  }

  static double? getWidgetWidth(GlobalKey globalKey) {
    final RenderBox? renderBox =
        globalKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;

    return renderBox.size.width;
  }

  static double? getWidgetHeight(GlobalKey globalKey) {
    final RenderBox? renderBox =
        globalKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;

    return renderBox.size.height;
  }
}
