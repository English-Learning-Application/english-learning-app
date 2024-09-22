import 'package:services/services.dart';

import '../di/di.dart';

class DataConfig extends Config {
  DataConfig._();

  factory DataConfig.getInstance() => _instance;

  static final DataConfig _instance = DataConfig._();

  @override
  Future<void> config() async => configureInjection();
}
