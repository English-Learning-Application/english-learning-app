import 'package:logic/logic.dart';
import 'package:flutter/material.dart';

abstract class BasePopupInfoMapper {
  Widget map(AppPopupInfo appPopupInfo, AppNavigator appNavigator);
}
