import 'package:auto_route/auto_route.dart';
import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

@LazySingleton(as: BaseRouteInfoMapper)
class AppRouteInfoMapper extends BaseRouteInfoMapper {
  @override
  PageRouteInfo map(AppRouteInfo appRouteInfo) {
    return appRouteInfo.when(
      login: () => const LoginRoute(),
      home: () => const HomeRoute(),
    );
  }
}
