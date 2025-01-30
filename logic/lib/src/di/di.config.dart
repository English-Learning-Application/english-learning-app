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
import 'package:logic/src/features/authentication/usecase/facebook_login_use_case.dart'
    as _i1006;
import 'package:logic/src/features/authentication/usecase/get_logged_in_user_use_case.dart'
    as _i106;
import 'package:logic/src/features/authentication/usecase/google_login_use_case.dart'
    as _i919;
import 'package:logic/src/features/authentication/usecase/login_user_use_case.dart'
    as _i945;
import 'package:logic/src/features/authentication/usecase/registration_completion_use_case.dart'
    as _i119;
import 'package:logic/src/features/authentication/usecase/username_registration_use_case.dart'
    as _i323;
import 'package:logic/src/features/exercise/use_case/flash_card_learning_update_use_case.dart'
    as _i700;
import 'package:logic/src/features/exercise/use_case/matching_learning_update_use_case.dart'
    as _i37;
import 'package:logic/src/features/exercise/use_case/pronunciation_assessment_use_case.dart'
    as _i700;
import 'package:logic/src/features/exercise/use_case/pronunciation_learning_update_use_case.dart'
    as _i487;
import 'package:logic/src/features/exercise/use_case/quiz_learning_update_use_case.dart'
    as _i918;
import 'package:logic/src/features/language_course/use_case/get_categories_use_case.dart'
    as _i738;
import 'package:logic/src/features/language_course/use_case/get_category_courses_by_language_use_case.dart'
    as _i314;
import 'package:logic/src/features/language_course/use_case/get_language_courses_by_language_and_level_use_case.dart'
    as _i408;
import 'package:logic/src/features/language_course/use_case/get_language_courses_by_language_use_case.dart'
    as _i244;
import 'package:logic/src/features/notification/usecase/register_fcm_token_use_case.dart'
    as _i119;
import 'package:logic/src/features/profile/use_case/send_email_verification_use_case.dart'
    as _i924;
import 'package:logic/src/features/profile/use_case/send_phone_verification_use_case.dart'
    as _i872;
import 'package:logic/src/features/profile/use_case/update_user_avatar_use_case.dart'
    as _i1052;
import 'package:logic/src/features/profile/use_case/update_user_profile_use_case.dart'
    as _i1020;
import 'package:logic/src/features/profile/use_case/verify_email_otp_use_case.dart'
    as _i522;
import 'package:logic/src/features/profile/use_case/verify_phone_otp_use_case.dart'
    as _i245;
import 'package:logic/src/usecase/check_permission_use_case.dart' as _i673;
import 'package:logic/src/usecase/clear_current_user_data_use_case.dart'
    as _i900;
import 'package:logic/src/usecase/get_current_pref_user_use_case.dart' as _i75;
import 'package:logic/src/usecase/get_initial_app_data_use_case.dart' as _i162;
import 'package:logic/src/usecase/get_phone_images_use_case.dart' as _i217;
import 'package:logic/src/usecase/get_users_use_case.dart' as _i281;
import 'package:logic/src/usecase/is_logged_in_use_case.dart' as _i688;
import 'package:logic/src/usecase/logout_use_case.dart' as _i878;
import 'package:logic/src/usecase/save_language_code_use_case.dart' as _i616;
import 'package:logic/src/usecase/save_theme_mode_use_case.dart' as _i783;
import 'package:logic/src/usecase/track_connectivity_use_case.dart' as _i732;

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
    gh.factory<_i673.CheckPermissionUseCase>(
        () => const _i673.CheckPermissionUseCase());
    gh.factory<_i738.GetCategoriesUseCase>(
        () => _i738.GetCategoriesUseCase(gh<_i182.LanguageCourseRepository>()));
    gh.factory<_i314.GetCategoryCoursesByLanguageUseCase>(() =>
        _i314.GetCategoryCoursesByLanguageUseCase(
            gh<_i182.LanguageCourseRepository>()));
    gh.factory<_i106.GetLoggedInUserUseCase>(() =>
        _i106.GetLoggedInUserUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i919.GoogleLoginUseCase>(
        () => _i919.GoogleLoginUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i945.LoginUserUseCase>(
        () => _i945.LoginUserUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i119.RegistrationCompletionUseCase>(() =>
        _i119.RegistrationCompletionUseCase(
            gh<_i182.AuthenticationRepository>()));
    gh.factory<_i323.UsernameRegistrationUseCase>(() =>
        _i323.UsernameRegistrationUseCase(
            gh<_i182.AuthenticationRepository>()));
    gh.factory<_i1006.FacebookLoginUseCase>(() => _i1006.FacebookLoginUseCase(
          gh<_i182.AuthenticationRepository>(),
          gh<_i182.AppNavigator>(),
        ));
    gh.factory<_i878.LogoutUseCase>(() => _i878.LogoutUseCase(
          gh<_i182.AuthenticationRepository>(),
          gh<_i182.AppRepository>(),
          gh<_i182.AppNavigator>(),
        ));
    gh.factory<_i245.VerifyPhoneOtpUseCase>(
        () => _i245.VerifyPhoneOtpUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i900.ClearCurrentUserDataUseCase>(
        () => _i900.ClearCurrentUserDataUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i75.GetCurrentPrefUserUseCase>(
        () => _i75.GetCurrentPrefUserUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i162.GetInitialAppDataUseCase>(
        () => _i162.GetInitialAppDataUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i217.GetPhoneImagesUseCase>(
        () => _i217.GetPhoneImagesUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i281.GetUsersUseCase>(
        () => _i281.GetUsersUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i688.IsLoggedInUseCase>(
        () => _i688.IsLoggedInUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i616.SaveLanguageCodeUseCase>(
        () => _i616.SaveLanguageCodeUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i783.SaveThemeModeUseCase>(
        () => _i783.SaveThemeModeUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i732.TrackConnectivityUseCase>(
        () => _i732.TrackConnectivityUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i119.RegisterFcmTokenUseCase>(
        () => _i119.RegisterFcmTokenUseCase(
              gh<_i182.NotificationRepository>(),
              gh<_i182.AppRepository>(),
            ));
    gh.factory<_i700.FlashCardLearningUpdateUseCase>(() =>
        _i700.FlashCardLearningUpdateUseCase(gh<_i182.ExerciseRepository>()));
    gh.factory<_i37.MatchingLearningUpdateUseCase>(() =>
        _i37.MatchingLearningUpdateUseCase(gh<_i182.ExerciseRepository>()));
    gh.factory<_i700.PronunciationAssessmentUseCase>(() =>
        _i700.PronunciationAssessmentUseCase(gh<_i182.ExerciseRepository>()));
    gh.factory<_i487.PronunciationLearningUpdateUseCase>(() =>
        _i487.PronunciationLearningUpdateUseCase(
            gh<_i182.ExerciseRepository>()));
    gh.factory<_i918.QuizLearningUpdateUseCase>(
        () => _i918.QuizLearningUpdateUseCase(gh<_i182.ExerciseRepository>()));
    gh.factory<_i408.GetLanguageCoursesByLanguageAndLevelUseCase>(
        () => _i408.GetLanguageCoursesByLanguageAndLevelUseCase(
              gh<_i182.LanguageCourseRepository>(),
              gh<_i182.ExerciseRepository>(),
            ));
    gh.factory<_i244.GetLanguageCoursesByLanguageUseCase>(
        () => _i244.GetLanguageCoursesByLanguageUseCase(
              gh<_i182.LanguageCourseRepository>(),
              gh<_i182.ExerciseRepository>(),
            ));
    gh.factory<_i924.SendEmailVerificationUseCase>(() =>
        _i924.SendEmailVerificationUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i872.SendPhoneVerificationUseCase>(() =>
        _i872.SendPhoneVerificationUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i522.VerifyEmailOtpUseCase>(
        () => _i522.VerifyEmailOtpUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i1052.UpdateUserAvatarUseCase>(
        () => _i1052.UpdateUserAvatarUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i1020.UpdateUserProfileUseCase>(
        () => _i1020.UpdateUserProfileUseCase(gh<_i182.ProfileRepository>()));
    return this;
  }
}
