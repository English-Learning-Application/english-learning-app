import 'package:services/services.dart';

import '../di/di.dart';

class LogicConfig extends Config {
  factory LogicConfig.getInstance() {
    return _instance;
  }

  LogicConfig._();

  static final LogicConfig _instance = LogicConfig._();

  @override
  Future<void> config() async {
    return configureInjection();
  }
}
