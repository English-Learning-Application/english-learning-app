import 'package:flutter/material.dart';
import 'package:services/services.dart';

class AppNavigatorObserver extends NavigatorObserver with LogMixin {
  AppNavigatorObserver();

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    logD(
      'didPush from ${previousRoute?.settings.name} to ${route.settings.name}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    logD(
      'didPop from ${route.settings.name} to ${previousRoute?.settings.name}',
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    logD(
      'didRemove from ${route.settings.name} to ${previousRoute?.settings.name}',
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    logD(
      'didReplace from ${oldRoute?.settings.name} to ${newRoute?.settings.name}',
    );
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    logD(
      'didStartUserGesture from ${previousRoute?.settings.name} to ${route.settings.name}',
    );
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    logD('didStopUserGesture');
  }
}
