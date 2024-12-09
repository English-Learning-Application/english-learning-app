// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app.dart' as _i137;
import 'package:app/app/view_model/app.dart' as _i215;
import 'package:app/base/view_model/common/common.dart' as _i915;
import 'package:app/features/home/view_models/home.dart' as _i885;
import 'package:app/features/login/view_model/login.dart' as _i1056;
import 'package:app/features/splash/view_models/splash.dart' as _i635;
import 'package:app/navigation/app_navigator_impl.dart' as _i101;
import 'package:app/navigation/mapper/app_popup_info_mapper.dart' as _i203;
import 'package:app/navigation/mapper/app_route_info_mapper.dart' as _i48;
import 'package:app/navigation/middleware/route_guard.dart' as _i513;
import 'package:app/navigation/routes/app_router.dart' as _i931;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logic/logic.dart' as _i182;
import 'package:services/services.dart' as _i473;

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
    gh.factory<_i885.HomeViewModel>(() => _i885.HomeViewModel());
    gh.factory<_i1056.LoginViewModel>(() => _i1056.LoginViewModel());
    gh.lazySingleton<_i137.BaseRouteInfoMapper>(
        () => _i48.AppRouteInfoMapper());
    gh.factory<_i635.SplashViewModel>(() => _i635.SplashViewModel(
          gh<_i182.GetInitialAppDataUseCase>(),
          gh<_i182.GetLoggedInUserUseCase>(),
          gh<_i182.GetCurrentPrefUserUseCase>(),
        ));
    gh.lazySingleton<_i137.BasePopupInfoMapper>(
        () => _i203.AppPopupInfoMapper());
    gh.factory<_i513.RouteGuard>(
        () => _i513.RouteGuard(gh<_i182.IsLoggedInUseCase>()));
    gh.factory<_i915.CommonViewModel>(() => _i915.CommonViewModel(
          gh<_i182.LogoutUseCase>(),
          gh<_i182.TrackConnectivityUseCase>(),
        ));
    gh.lazySingleton<_i215.AppViewModel>(() => _i215.AppViewModel(
          gh<_i182.SaveLanguageCodeUseCase>(),
          gh<_i182.SaveThemeModeUseCase>(),
          gh<_i182.GetLoggedInUserUseCase>(),
          gh<_i182.GetCurrentPrefUserUseCase>(),
          gh<_i473.RemotePushNotificationService>(),
        ));
    gh.lazySingleton<_i931.AppRouter>(
        () => _i931.AppRouter(gh<_i137.RouteGuard>()));
    gh.lazySingleton<_i182.AppNavigator>(() => _i101.AppNavigatorImpl(
          gh<_i137.AppRouter>(),
          gh<_i137.BasePopupInfoMapper>(),
          gh<_i137.BaseRouteInfoMapper>(),
        ));
    return this;
  }
}
