import 'package:logic/src/navigation/app_popup_info.dart';
import 'package:logic/src/navigation/app_route_info.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart';

abstract class AppNavigator {
  const AppNavigator();

  bool get canPopSelfOrChildren;

  int get currentBottomTab;

  String getCurrentRouteName({bool useRootNavigator = false});

  void popUntilRootOfCurrentBottomTab();

  void navigateToBottomTab(int index, {bool notify = true});

  Future<T?> push<T extends Object?>(AppRouteInfo appRouteInfo);

  Future<void> pushAll(List<AppRouteInfo> listAppRouteInfo);

  Future<T?> replace<T extends Object?>(AppRouteInfo appRouteInfo);

  Future<void> replaceAll(List<AppRouteInfo> listAppRouteInfo);

  Future<bool> pop<T extends Object?>({
    T? result,
    bool useRootNavigator = true,
  });

  Future<bool> popTop<T extends Object?>({
    T? result,
    bool useRootNavigator = true,
  });

  Future<T?> popAndPush<T extends Object?, R extends Object?>(
    AppRouteInfo appRouteInfo, {
    R? result,
    bool useRootNavigator = false,
  });

  Future<void> popAndPushAll(
    List<AppRouteInfo> listAppRouteInfo, {
    bool useRootNavigator = false,
  });

  void popUntilRoot({bool useRootNavigator = false});

  void popUntilRouteName(
    String routeName,
  );

  bool removeUntilRouteName(
    String routeName,
  );

  bool removeAllRoutesWithName(
    String routeName,
  );

  bool removeLast();

  Future<T?> showDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
  });

  Future<T?> showGeneralDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transitionBuilder,
    bool barrierDismissible = true,
    Duration transitionDuration =
        DurationConstants.defaultGeneralDialogTransitionDuration,
    Color barrierColor = const Color(0xff000000),
    bool useRootNavigator = true,
  });

  Future<T?> showModalBottomSheet<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    Color barrier = Colors.black54,
    Color? backgroundColor,
  });

  void showErrorSnackBar(String message, {Duration? duration});

  void showSuccessSnackBar(String message, {Duration? duration});

  Future<T?> pushNamed<T extends Object?>(
    String path, {
    bool includePrefixMatches = false,
  });

  Future<dynamic> navigate(
    AppRouteInfo appRouteInfo,
  );
}
