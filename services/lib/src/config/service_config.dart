import 'package:get_it/get_it.dart';

import '../../services.dart';
import '../di/di.dart';

class ServiceConfig extends Config {
  ServiceConfig._();

  factory ServiceConfig.getInstance() => _instance;

  static final ServiceConfig _instance = ServiceConfig._();

  @override
  Future<void> config() async {
    configureDependencies();
    await GetIt.instance.get<AppInfo>().init();
  }
}
