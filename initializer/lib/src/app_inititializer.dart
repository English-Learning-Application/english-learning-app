import 'package:services/services.dart';
import 'package:logic/logic.dart';
import 'package:data/data.dart';

abstract class ApplicationConfig extends Config {}

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final ApplicationConfig _applicationConfig;

  Future<void> init() async {
    EnvConstants.init();
    await ServiceConfig.getInstance().init();
    await LogicConfig.getInstance().init();
    await DataConfig.getInstance().init();
    await _applicationConfig.init();
  }
}
