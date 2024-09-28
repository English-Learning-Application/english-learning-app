import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:logic/logic.dart';
import 'package:flutter/material.dart' as material;
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../app.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl extends AppNavigator with LogMixin {
  AppNavigatorImpl(
    this._appRouter,
    this._appPopupInfoMapper,
    this._appRouteInfoMapper,
  );

  final tabRoutes = const [];

  TabsRouter? tabsRouter;

  final AppRouter _appRouter;
  final BasePopupInfoMapper _appPopupInfoMapper;
  final BaseRouteInfoMapper _appRouteInfoMapper;
  final _shownPopups = <AppPopupInfo, Completer<dynamic>>{};

  StackRouter? get _currentTabRouter => tabsRouter?.stackRouterOfIndex(
        currentBottomTab,
      );

  StackRouter get _currentTabRouterOrRootRouter =>
      _currentTabRouter ?? _appRouter;

  material.BuildContext get _rootRouterContext =>
      _appRouter.navigatorKey.currentContext!;

  material.BuildContext? get _currentTabRouterContext =>
      _currentTabRouter?.navigatorKey.currentContext;

  material.BuildContext get _currentTabContextOrRootContext =>
      _currentTabRouterContext ?? _rootRouterContext;

  @override
  bool get canPopSelfOrChildren => _appRouter.canPop();

  @override
  int get currentBottomTab {
    if (tabsRouter == null) {
      throw 'Not found any tabs router';
    }

    return tabsRouter?.activeIndex ?? 0;
  }

  @override
  String getCurrentRouteName({bool useRootNavigator = false}) {
    return AutoRouter.of(
      useRootNavigator ? _rootRouterContext : _currentTabContextOrRootContext,
    ).current.name;
  }

  @override
  void navigateToBottomTab(int index, {bool notify = true}) {
    if (tabsRouter == null) {
      throw 'Not found any tabs router';
    }
    logD('navigateToBottomTab index: $index, notify: $notify');

    tabsRouter?.setActiveIndex(index, notify: notify);
  }

  @override
  Future<bool> pop<T extends Object?>(
      {T? result, bool useRootNavigator = true}) {
    logD('pop with result: $result, userRootNavigator: $useRootNavigator');
    return useRootNavigator
        ? _appRouter.pop<T>(result)
        : _currentTabRouterOrRootRouter.pop<T>(result);
  }

  @override
  Future<bool> popTop<T extends Object?>(
      {T? result, bool useRootNavigator = true}) {
    logD('popTop with result: $result, userRootNavigator: $useRootNavigator');

    return useRootNavigator
        ? _appRouter.popTop<T>(result)
        : _currentTabRouterOrRootRouter.popTop<T>(result);
  }

  @override
  Future<T?> popAndPush<T extends Object?, R extends Object?>(
    AppRouteInfo appRouteInfo, {
    R? result,
    bool useRootNavigator = false,
  }) {
    logD(
        'popAndPush with result: $result, userRootNavigator: $useRootNavigator');

    return useRootNavigator
        ? _appRouter.popAndPush<T, R>(
            _appRouteInfoMapper.map(appRouteInfo),
            result: result,
          )
        : _currentTabRouterOrRootRouter.popAndPush<T, R>(
            _appRouteInfoMapper.map(appRouteInfo),
            result: result,
          );
  }

  @override
  Future<void> popAndPushAll(List<AppRouteInfo> listAppRouteInfo,
      {bool useRootNavigator = false}) {
    logD(
      'removeAllAndPushAll $listAppRouteInfo, useRootNavigator: $useRootNavigator',
    );

    return useRootNavigator
        ? _appRouter.popAndPushAll(
            _appRouteInfoMapper.mapList(listAppRouteInfo),
          )
        : _currentTabRouterOrRootRouter.popAndPushAll(
            _appRouteInfoMapper.mapList(listAppRouteInfo),
          );
  }

  @override
  void popUntilRoot({bool useRootNavigator = false}) {
    logD('popUntilRoot useRootNavigator: $useRootNavigator');

    useRootNavigator
        ? _appRouter.popUntilRoot()
        : _currentTabRouterOrRootRouter.popUntilRoot();
  }

  @override
  void popUntilRootOfCurrentBottomTab() {
    if (tabsRouter == null) {
      throw 'Not found any tabs router';
    }

    if (_currentTabRouter?.canPop() == true) {
      logD('popUntilRootOfCurrentBottomTab');

      _currentTabRouter?.popUntilRoot();
    }
  }

  @override
  void popUntilRouteName(String routeName) {
    logD('popUntilRouteName $routeName');

    _appRouter.popUntilRouteWithName(routeName);
  }

  @override
  Future<T?> push<T extends Object?>(AppRouteInfo appRouteInfo) {
    logD('push $appRouteInfo');

    return _appRouter.push<T>(
      _appRouteInfoMapper.map(appRouteInfo),
    );
  }

  @override
  Future<void> pushAll(List<AppRouteInfo> listAppRouteInfo) {
    logD('pushAll $listAppRouteInfo');

    return _appRouter.pushAll(
      _appRouteInfoMapper.mapList(listAppRouteInfo),
    );
  }

  @override
  bool removeAllRoutesWithName(String routeName) {
    logD('removeAllRoutesWithName $routeName');

    return _appRouter.removeWhere((route) => route.name == routeName);
  }

  @override
  bool removeLast() {
    logD('removeLast');

    return _appRouter.removeLast();
  }

  @override
  bool removeUntilRouteName(String routeName) {
    logD('removeUntilRouteName $routeName');

    return _appRouter.removeUntil(
      (route) => route.name == routeName,
    );
  }

  @override
  Future<T?> replace<T extends Object?>(AppRouteInfo appRouteInfo) {
    logD('replace $appRouteInfo');

    return _appRouter.replace<T>(
      _appRouteInfoMapper.map(appRouteInfo),
    );
  }

  @override
  Future<void> replaceAll(List<AppRouteInfo> listAppRouteInfo) {
    _shownPopups.clear();
    logD('replaceAll $listAppRouteInfo');

    return _appRouter.replaceAll(
      _appRouteInfoMapper.mapList(listAppRouteInfo),
    );
  }

  @override
  Future<T?> showDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
  }) {
    if (_shownPopups.containsKey(appPopupInfo)) {
      logD('Dialog $appPopupInfo already shown');

      return _shownPopups[appPopupInfo]!.future.safeCast();
    }
    _shownPopups[appPopupInfo] = Completer<T?>();
    return material.showDialog<T>(
      context: useRootNavigator
          ? _rootRouterContext
          : _currentTabContextOrRootContext,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      builder: (_) {
        return material.PopScope(
          onPopInvoked: (didPop) {
            logD('Dialog $appPopupInfo will pop');

            _shownPopups.remove(appPopupInfo);
          },
          child: _appPopupInfoMapper.map(appPopupInfo, this),
        );
      },
    );
  }

  @override
  void showErrorSnackBar(String message, {Duration? duration}) {
    ViewUtils.showAppSnackBar(
      _currentTabContextOrRootContext,
      message,
      duration: duration,
    );
  }

  @override
  Future<T?> showGeneralDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    material.Widget Function(
      material.BuildContext p1,
      material.Animation<double> p2,
      material.Animation<double> p3,
      material.Widget p4,
    )? transitionBuilder,
    bool barrierDismissible = true,
    Duration transitionDuration =
        DurationConstants.defaultGeneralDialogTransitionDuration,
    material.Color barrierColor = const material.Color(0xff000000),
    bool useRootNavigator = true,
  }) {
    logD('showGeneralDialog $appPopupInfo');

    return material.showGeneralDialog<T>(
      context: useRootNavigator
          ? _rootRouterContext
          : _currentTabContextOrRootContext,
      pageBuilder: (context, animation, secondaryAnimation) {
        return material.PopScope(
          onPopInvoked: (didPop) {
            logD('Dialog $appPopupInfo will pop');
            _shownPopups.remove(appPopupInfo);
          },
          child: _appPopupInfoMapper.map(
            appPopupInfo,
            this,
          ),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
      useRootNavigator: useRootNavigator,
    );
  }

  @override
  Future<T?> showModalBottomSheet<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    material.Color barrier = material.Colors.black54,
    material.Color? backgroundColor,
  }) {
    logD('showModalBottomSheet $appPopupInfo');

    return material.showModalBottomSheet(
      context: useRootNavigator
          ? _rootRouterContext
          : _currentTabContextOrRootContext,
      builder: (_) {
        return _appPopupInfoMapper.map(appPopupInfo, this);
      },
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: isScrollControlled,
      barrierColor: barrier,
      backgroundColor: backgroundColor,
      useRootNavigator: useRootNavigator,
    );
  }

  @override
  void showSuccessSnackBar(
    String message, {
    Duration? duration,
  }) {
    ViewUtils.showAppSnackBar(
      _currentTabContextOrRootContext,
      message,
      duration: duration,
    );
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    String path, {
    bool includePrefixMatches = false,
  }) {
    return _appRouter.pushNamed(
      path,
      includePrefixMatches: includePrefixMatches,
    );
  }

  @override
  Future<dynamic> navigate(AppRouteInfo appRouteInfo) {
    return _appRouter.navigate(_appRouteInfoMapper.map(appRouteInfo));
  }
}
