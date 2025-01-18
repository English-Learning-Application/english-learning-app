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
import 'package:app/di/di.dart' as _i120;
import 'package:app/features/ai_chat_bot/view_models/ai_chat_bot.dart' as _i709;
import 'package:app/features/complete_registration/view_models/complete_registration.dart'
    as _i752;
import 'package:app/features/course/view_models/course.dart' as _i366;
import 'package:app/features/flash_card_learning/view_model/flash_card_learning.dart'
    as _i5;
import 'package:app/features/home/view_models/home.dart' as _i885;
import 'package:app/features/language_course/view_model/language_course/language_course.dart'
    as _i117;
import 'package:app/features/language_course/view_model/language_course_details/language_course_details.dart'
    as _i725;
import 'package:app/features/login/view_model/login.dart' as _i1056;
import 'package:app/features/main/viewmodels/main_view_model.dart' as _i93;
import 'package:app/features/matching_learning/view_model/matching_learning.dart'
    as _i235;
import 'package:app/features/on_boarding/viewmodel/on_boarding.dart' as _i646;
import 'package:app/features/profile/view_models/profile.dart' as _i238;
import 'package:app/features/quiz_learning/view_model/quiz_learning.dart'
    as _i96;
import 'package:app/features/splash/view_models/splash.dart' as _i635;
import 'package:app/navigation/app_navigator_impl.dart' as _i101;
import 'package:app/navigation/mapper/app_popup_info_mapper.dart' as _i203;
import 'package:app/navigation/mapper/app_route_info_mapper.dart' as _i48;
import 'package:app/navigation/middleware/is_logged_in_route_guard.dart'
    as _i21;
import 'package:app/navigation/middleware/route_guard.dart' as _i513;
import 'package:app/navigation/routes/app_router.dart' as _i931;
import 'package:audioplayers/audioplayers.dart' as _i656;
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:flutter_tts/flutter_tts.dart' as _i50;
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
    final appModules = _$AppModules();
    gh.factory<_i709.AiChatBotViewModel>(() => _i709.AiChatBotViewModel());
    gh.factory<_i366.CourseViewModel>(() => _i366.CourseViewModel());
    gh.factory<_i5.FlashCardLearningViewModel>(
        () => _i5.FlashCardLearningViewModel());
    gh.factory<_i885.HomeViewModel>(() => _i885.HomeViewModel());
    gh.factory<_i93.MainViewModel>(() => _i93.MainViewModel());
    gh.factory<_i646.OnboardingViewModel>(() => _i646.OnboardingViewModel());
    gh.factory<_i238.ProfileViewModel>(() => _i238.ProfileViewModel());
    gh.factory<_i96.QuizLearningViewModel>(() => _i96.QuizLearningViewModel());
    gh.factory<_i235.MatchingLearningViewModel>(
        () => _i235.MatchingLearningViewModel());
    gh.lazySingleton<_i50.FlutterTts>(() => appModules.flutterTts);
    gh.lazySingleton<_i398.FirebaseAnalytics>(
        () => appModules.firebaseAnalytics);
    gh.lazySingleton<_i656.AudioPlayer>(() => appModules.audioPlayer);
    gh.factory<_i513.RouteGuard>(() => _i513.RouteGuard(
          gh<_i182.IsLoggedInUseCase>(),
          gh<_i182.GetCurrentPrefUserUseCase>(),
        ));
    gh.lazySingleton<_i137.BaseRouteInfoMapper>(
        () => _i48.AppRouteInfoMapper());
    gh.factory<_i635.SplashViewModel>(() => _i635.SplashViewModel(
          gh<_i182.GetInitialAppDataUseCase>(),
          gh<_i182.GetLoggedInUserUseCase>(),
          gh<_i182.GetCurrentPrefUserUseCase>(),
        ));
    gh.lazySingleton<_i137.BasePopupInfoMapper>(
        () => _i203.AppPopupInfoMapper());
    gh.factory<_i1056.LoginViewModel>(() => _i1056.LoginViewModel(
          gh<_i182.UsernameRegistrationUseCase>(),
          gh<_i182.LoginUserUseCase>(),
          gh<_i182.GoogleLoginUseCase>(),
          gh<_i182.FacebookLoginUseCase>(),
        ));
    gh.factory<_i117.LanguageCourseViewModel>(
        () => _i117.LanguageCourseViewModel(
              gh<_i182.GetLanguageCoursesByLanguageUseCase>(),
              gh<_i182.GetLanguageCoursesByLanguageAndLevelUseCase>(),
            ));
    gh.factory<_i21.IsLoggedInRouteGuard>(
        () => _i21.IsLoggedInRouteGuard(gh<_i182.IsLoggedInUseCase>()));
    gh.lazySingleton<_i215.AppViewModel>(() => _i215.AppViewModel(
          gh<_i182.SaveLanguageCodeUseCase>(),
          gh<_i182.SaveThemeModeUseCase>(),
          gh<_i182.GetLoggedInUserUseCase>(),
          gh<_i182.GetCurrentPrefUserUseCase>(),
          gh<_i473.RemotePushNotificationService>(),
          gh<_i182.LogoutUseCase>(),
        ));
    gh.factory<_i915.CommonViewModel>(() => _i915.CommonViewModel(
          gh<_i182.LogoutUseCase>(),
          gh<_i182.TrackConnectivityUseCase>(),
        ));
    gh.factory<_i752.CompleteRegistrationViewModel>(() =>
        _i752.CompleteRegistrationViewModel(
            gh<_i182.RegistrationCompletionUseCase>()));
    gh.factory<_i725.LanguageCourseDetailsViewModel>(
        () => _i725.LanguageCourseDetailsViewModel(gh<_i50.FlutterTts>()));
    gh.lazySingleton<_i931.AppRouter>(() => _i931.AppRouter(
          gh<_i137.RouteGuard>(),
          gh<_i21.IsLoggedInRouteGuard>(),
        ));
    gh.lazySingleton<_i182.AppNavigator>(() => _i101.AppNavigatorImpl(
          gh<_i137.AppRouter>(),
          gh<_i137.BasePopupInfoMapper>(),
          gh<_i137.BaseRouteInfoMapper>(),
        ));
    return this;
  }
}

class _$AppModules extends _i120.AppModules {}
