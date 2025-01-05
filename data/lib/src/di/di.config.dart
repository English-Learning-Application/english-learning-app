// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:data/data.dart' as _i437;
import 'package:data/src/app_repository/app_repository_impl.dart' as _i27;
import 'package:data/src/app_repository/mapper/api_country_data_mapper.dart'
    as _i626;
import 'package:data/src/app_repository/mapper/api_media_data_mapper.dart'
    as _i728;
import 'package:data/src/app_repository/mapper/api_notification_data_mapper.dart'
    as _i305;
import 'package:data/src/app_repository/mapper/api_random_user_data_mapper.dart'
    as _i416;
import 'package:data/src/app_repository/mapper/api_random_user_name_data_mapper.dart'
    as _i348;
import 'package:data/src/app_repository/mapper/api_token_data_mapper.dart'
    as _i639;
import 'package:data/src/app_repository/mapper/api_user_data_mapper.dart'
    as _i1028;
import 'package:data/src/app_repository/mapper/api_user_profile_data_mapper.dart'
    as _i818;
import 'package:data/src/app_repository/mapper/app_theme_data_mapper.dart'
    as _i646;
import 'package:data/src/app_repository/source/api/app_api_service.dart'
    as _i261;
import 'package:data/src/app_repository/source/database/app_database.dart'
    as _i6;
import 'package:data/src/app_repository/source/database/objectbox/objectbox.g.dart'
    as _i465;
import 'package:data/src/app_repository/source/preferences/app_preferences.dart'
    as _i881;
import 'package:data/src/base/api/client/auth_app_server_api_client.dart'
    as _i243;
import 'package:data/src/base/api/client/non_auth_app_server_api_client.dart'
    as _i936;
import 'package:data/src/base/api/client/random_user_api_client.dart' as _i906;
import 'package:data/src/base/api/client/refresh_token_api_client.dart'
    as _i423;
import 'package:data/src/base/api/refresh_token_api_service.dart' as _i600;
import 'package:data/src/base/mapper/base_error_response_mapper/common_error_response_mapper.dart'
    as _i551;
import 'package:data/src/base/mapper/base_error_response_mapper/firebase_storage_error_response_mapper.dart'
    as _i478;
import 'package:data/src/base/mapper/base_error_response_mapper/goong_error_response_mapper.dart'
    as _i117;
import 'package:data/src/base/mapper/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i198;
import 'package:data/src/base/mapper/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i8;
import 'package:data/src/base/mapper/base_error_response_mapper/line_error_response_mapper.dart'
    as _i342;
import 'package:data/src/base/mapper/base_error_response_mapper/twitter_error_response_mapper.dart'
    as _i441;
import 'package:data/src/base/middleware/access_token_interceptor.dart' as _i30;
import 'package:data/src/base/middleware/header_interceptor.dart' as _i77;
import 'package:data/src/base/middleware/refresh_token_interceptor.dart'
    as _i193;
import 'package:data/src/di/di.dart' as _i102;
import 'package:data/src/features/authentication/data_source/api/authentication_api_data_source.dart'
    as _i920;
import 'package:data/src/features/authentication/repository/authentication_repository_impl.dart'
    as _i322;
import 'package:data/src/features/notification/data_source/api/notification_api_service.dart'
    as _i82;
import 'package:data/src/features/notification/repository/notification_repository_impl.dart'
    as _i946;
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart' as _i695;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logic/logic.dart' as _i182;
import 'package:objectbox/objectbox.dart' as _i1034;
import 'package:services/services.dart' as _i473;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i626.ApiCountryDataMapper>(() => _i626.ApiCountryDataMapper());
    gh.factory<_i728.ApiMediaDataMapper>(() => _i728.ApiMediaDataMapper());
    gh.factory<_i305.ApiAppNotificationDataMapper>(
        () => _i305.ApiAppNotificationDataMapper());
    gh.factory<_i348.ApiRandomUserNameDataMapper>(
        () => _i348.ApiRandomUserNameDataMapper());
    gh.factory<_i639.ApiTokenDataMapper>(() => _i639.ApiTokenDataMapper());
    gh.factory<_i646.AppThemeDataMapper>(() => _i646.AppThemeDataMapper());
    gh.factory<_i551.CommonErrorResponseMapper>(
        () => _i551.CommonErrorResponseMapper());
    gh.factory<_i478.FirebaseStorageErrorResponseMapper>(
        () => _i478.FirebaseStorageErrorResponseMapper());
    gh.factory<_i117.GoongErrorResponseMapper>(
        () => _i117.GoongErrorResponseMapper());
    gh.factory<_i198.JsonArrayErrorResponseMapper>(
        () => _i198.JsonArrayErrorResponseMapper());
    gh.factory<_i8.JsonObjectErrorResponseMapper>(
        () => _i8.JsonObjectErrorResponseMapper());
    gh.factory<_i342.LineErrorResponseMapper>(
        () => _i342.LineErrorResponseMapper());
    gh.factory<_i441.TwitterErrorResponseMapper>(
        () => _i441.TwitterErrorResponseMapper());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i895.Connectivity>(() => dataModule.connectivity);
    gh.factory<_i695.CacheOptions>(() => dataModule.cacheOptions);
    gh.factory<_i695.DioCacheInterceptor>(() => dataModule.dioCacheInterceptor);
    await gh.factoryAsync<_i465.Store>(
      () => dataModule.getStore(),
      preResolve: true,
    );
    gh.factory<_i818.ApiUserProfileDataMapper>(
        () => _i818.ApiUserProfileDataMapper());
    gh.factory<_i77.HeaderInterceptor>(
        () => _i77.HeaderInterceptor(gh<_i473.AppInfo>()));
    gh.factory<_i1028.ApiUserDataMapper>(() => _i1028.ApiUserDataMapper(
          gh<_i437.ApiMediaDataMapper>(),
          gh<_i437.ApiUserProfileDataMapper>(),
        ));
    gh.lazySingleton<_i881.AppPreferences>(
        () => _i881.AppPreferences(gh<_i460.SharedPreferences>()));
    gh.factory<_i416.ApiRandomUserDataMapper>(() =>
        _i416.ApiRandomUserDataMapper(gh<_i437.ApiRandomUserNameDataMapper>()));
    gh.lazySingleton<_i936.NonAuthAppServerApiClient>(
        () => _i936.NonAuthAppServerApiClient(gh<_i437.HeaderInterceptor>()));
    gh.lazySingleton<_i906.RandomUserApiClient>(
        () => _i906.RandomUserApiClient(gh<_i695.DioCacheInterceptor>()));
    gh.lazySingleton<_i6.AppDatabase>(
        () => _i6.AppDatabase(gh<_i1034.Store>()));
    gh.factory<_i30.AccessTokenInterceptor>(
        () => _i30.AccessTokenInterceptor(gh<_i437.AppPreferences>()));
    gh.lazySingleton<_i423.RefreshTokenApiClient>(
        () => _i423.RefreshTokenApiClient(
              gh<_i437.AccessTokenInterceptor>(),
              gh<_i437.HeaderInterceptor>(),
            ));
    gh.lazySingleton<_i600.RefreshTokenApiService>(
        () => _i600.RefreshTokenApiService(gh<_i437.RefreshTokenApiClient>()));
    gh.lazySingleton<_i261.AppApiService>(
        () => _i261.AppApiService(gh<_i437.RandomUserApiClient>()));
    gh.lazySingleton<_i182.AppRepository>(() => _i27.AppRepositoryImpl(
          gh<_i437.AppApiService>(),
          gh<_i437.AppPreferences>(),
          gh<_i437.ApiRandomUserDataMapper>(),
          gh<_i437.AppThemeDataMapper>(),
          gh<_i437.ApiUserDataMapper>(),
        ));
    gh.factory<_i193.RefreshTokenInterceptor>(
        () => _i193.RefreshTokenInterceptor(
              gh<_i437.AppPreferences>(),
              gh<_i437.RefreshTokenApiService>(),
              gh<_i437.NonAuthAppServerApiClient>(),
            ));
    gh.lazySingleton<_i243.AuthAppServerApiClient>(
        () => _i243.AuthAppServerApiClient(
              gh<_i437.HeaderInterceptor>(),
              gh<_i437.AccessTokenInterceptor>(),
              gh<_i437.RefreshTokenInterceptor>(),
              gh<_i695.DioCacheInterceptor>(),
            ));
    gh.lazySingleton<_i920.AuthenticationApiDataSource>(
        () => _i920.AuthenticationApiDataSource(
              gh<_i437.NonAuthAppServerApiClient>(),
              gh<_i437.AuthAppServerApiClient>(),
            ));
    gh.lazySingleton<_i82.NotificationApiDataSource>(() =>
        _i82.NotificationApiDataSource(gh<_i437.AuthAppServerApiClient>()));
    gh.lazySingleton<_i182.NotificationRepository>(() =>
        _i946.NotificationRepositoryImpl(gh<_i82.NotificationApiDataSource>()));
    gh.lazySingleton<_i182.AuthenticationRepository>(
        () => _i322.AuthenticationRepositoryImpl(
              gh<_i920.AuthenticationApiDataSource>(),
              gh<_i437.AppPreferences>(),
              gh<_i437.ApiUserDataMapper>(),
            ));
    return this;
  }
}

class _$DataModule extends _i102.DataModule {}
