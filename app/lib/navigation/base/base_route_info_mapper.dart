import 'package:auto_route/auto_route.dart';
import 'package:logic/logic.dart';

abstract class BaseRouteInfoMapper {
  PageRouteInfo map(AppRouteInfo appRouteInfo);

  List<PageRouteInfo> mapList(List<AppRouteInfo> appRouteInfoList) {
    return appRouteInfoList.map(map).toList();
  }
}
