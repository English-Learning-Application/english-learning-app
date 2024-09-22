import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:services/services.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@module
abstract class DataModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<Store> getStore() async {
    final dir = await getApplicationDocumentsDirectory();
    final directory = '${dir.path}/${DatabaseConstants.databaseName}';
    if (Store.isOpen(directory)) {
      return Store.attach(
        getObjectBoxModel(),
        directory,
      );
    }
    return Store(
      getObjectBoxModel(),
      directory: directory,
    );
  }
}

@injectableInit
void configureInjection() => getIt.init();
