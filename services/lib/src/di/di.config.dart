// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logic/logic.dart' as _i182;
import 'package:services/services.dart' as _i473;
import 'package:services/src/helper/app_info.dart' as _i326;
import 'package:services/src/services/notifications/local_push_notification_service.dart'
    as _i660;
import 'package:services/src/services/notifications/mapper/app_notification_service_mapper.dart'
    as _i464;
import 'package:services/src/services/notifications/mapper/app_notification_type_service_mapper.dart'
    as _i518;
import 'package:services/src/services/notifications/remote_push_notification_service.dart'
    as _i938;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i326.AppInfo>(() => _i326.AppInfo());
    gh.factory<_i518.AppNotificationTypeServiceMapper>(
        () => _i518.AppNotificationTypeServiceMapper());
    gh.lazySingleton<_i660.LocalPushNotificationService>(
        () => _i660.LocalPushNotificationService());
    gh.factory<_i464.AppNotificationServiceMapper>(() =>
        _i464.AppNotificationServiceMapper(
            gh<_i473.AppNotificationTypeServiceMapper>()));
    gh.lazySingleton<_i938.RemotePushNotificationService>(
        () => _i938.RemotePushNotificationService(
              gh<_i473.LocalPushNotificationService>(),
              gh<_i473.AppNotificationServiceMapper>(),
              gh<_i182.RegisterFcmTokenUseCase>(),
            ));
    return this;
  }
}
