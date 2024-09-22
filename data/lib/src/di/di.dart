import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:services/services.dart';
import '../app_repository/source/database/objectbox/objectbox.g.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@module
abstract class DataModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Injectable()
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<Store> getStore() async {
    final dir = await getApplicationDocumentsDirectory();
    final directory = '${dir.path}/${DatabaseConstants.dbName}';
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

  @Injectable()
  CacheOptions get cacheOptions {
    return CacheOptions(
      store: MemCacheStore(),
      policy: CachePolicy.request,
      hitCacheOnErrorExcept: [
        HttpStatus.unauthorized,
        HttpStatus.forbidden,
      ],
      maxStale: DurationConstants.defaultCacheDuration,
    );
  }

  @Injectable()
  DioCacheInterceptor get dioCacheInterceptor => DioCacheInterceptor(
        options: getIt.get<CacheOptions>(),
      );
}

@injectableInit
void configureInjection() => getIt.init();
