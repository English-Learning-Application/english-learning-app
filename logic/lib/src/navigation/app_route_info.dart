import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_route_info.freezed.dart';

@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.login() = _Login;
  const factory AppRouteInfo.home() = _Home;
  const factory AppRouteInfo.splash() = _Splash;
}
