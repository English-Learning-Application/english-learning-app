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
import 'package:logic/src/features/achievement/use_case/get_all_achievement_use_case.dart'
    as _i362;
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
import 'package:logic/src/features/authentication/usecase/reset_password_request_use_case.dart'
    as _i889;
import 'package:logic/src/features/authentication/usecase/reset_password_use_case.dart'
    as _i845;
import 'package:logic/src/features/authentication/usecase/username_registration_use_case.dart'
    as _i323;
import 'package:logic/src/features/bookmark/use_case/bookmark_course_use_case.dart'
    as _i74;
import 'package:logic/src/features/bookmark/use_case/get_all_user_bookmark_courses_use_case.dart'
    as _i1031;
import 'package:logic/src/features/bookmark/use_case/is_course_bookmark_use_case.dart'
    as _i116;
import 'package:logic/src/features/bookmark/use_case/remove_bookmark_use_case.dart'
    as _i807;
import 'package:logic/src/features/community/use_case/create_community_chat_session_use_case.dart'
    as _i239;
import 'package:logic/src/features/community/use_case/create_new_chat_bot_session_use_case.dart'
    as _i855;
import 'package:logic/src/features/community/use_case/delete_chat_session_use_case.dart'
    as _i876;
import 'package:logic/src/features/community/use_case/get_chat_bot_messages_use_case.dart'
    as _i956;
import 'package:logic/src/features/community/use_case/get_chat_bot_sessions_use_case.dart'
    as _i813;
import 'package:logic/src/features/community/use_case/get_community_topics_use_case.dart'
    as _i767;
import 'package:logic/src/features/community/use_case/get_private_sessions_use_case.dart'
    as _i608;
import 'package:logic/src/features/community/use_case/get_session_messages_use_case.dart'
    as _i444;
import 'package:logic/src/features/community/use_case/get_sessions_by_topic_use_case.dart'
    as _i179;
import 'package:logic/src/features/community/use_case/get_user_sessions_by_topic_use_case.dart'
    as _i709;
import 'package:logic/src/features/community/use_case/initiate_private_chat_session_use_case.dart'
    as _i144;
import 'package:logic/src/features/community/use_case/join_chat_session_use_case.dart'
    as _i1022;
import 'package:logic/src/features/exercise/use_case/flash_card_learning_update_use_case.dart'
    as _i700;
import 'package:logic/src/features/exercise/use_case/get_all_learning_progress_use_case.dart'
    as _i765;
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
import 'package:logic/src/features/notification/usecase/delete_fcm_tokens_use_case.dart'
    as _i366;
import 'package:logic/src/features/notification/usecase/register_fcm_token_use_case.dart'
    as _i119;
import 'package:logic/src/features/profile/use_case/send_email_verification_use_case.dart'
    as _i924;
import 'package:logic/src/features/profile/use_case/send_phone_verification_use_case.dart'
    as _i872;
import 'package:logic/src/features/profile/use_case/update_user_avatar_use_case.dart'
    as _i1052;
import 'package:logic/src/features/profile/use_case/update_user_password_use_case.dart'
    as _i593;
import 'package:logic/src/features/profile/use_case/update_user_profile_use_case.dart'
    as _i1020;
import 'package:logic/src/features/profile/use_case/verify_email_otp_use_case.dart'
    as _i522;
import 'package:logic/src/features/profile/use_case/verify_phone_otp_use_case.dart'
    as _i245;
import 'package:logic/src/features/subscription/use_case/create_subscription_payment_use_case.dart'
    as _i845;
import 'package:logic/src/features/subscription/use_case/get_all_subscriptions_use_case.dart'
    as _i1054;
import 'package:logic/src/features/subscription/use_case/swap_subscription_plan_use_case.dart'
    as _i1008;
import 'package:logic/src/features/todo/use_case/create_todo_use_case.dart'
    as _i12;
import 'package:logic/src/features/todo/use_case/delete_todo_use_case.dart'
    as _i504;
import 'package:logic/src/features/todo/use_case/get_all_todos_use_case.dart'
    as _i389;
import 'package:logic/src/features/todo/use_case/update_todo_use_case.dart'
    as _i32;
import 'package:logic/src/usecase/check_permission_use_case.dart' as _i673;
import 'package:logic/src/usecase/clear_current_user_data_use_case.dart'
    as _i900;
import 'package:logic/src/usecase/get_current_pref_user_use_case.dart' as _i75;
import 'package:logic/src/usecase/get_initial_app_data_use_case.dart' as _i162;
import 'package:logic/src/usecase/get_phone_images_use_case.dart' as _i217;
import 'package:logic/src/usecase/get_users_data_use_case.dart' as _i246;
import 'package:logic/src/usecase/get_users_use_case.dart' as _i281;
import 'package:logic/src/usecase/has_subscription_use_case.dart' as _i1051;
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
    gh.factory<_i362.GetAllAchievementUseCase>(() =>
        _i362.GetAllAchievementUseCase(gh<_i182.AchievementRepository>()));
    gh.factory<_i12.CreateTodoUseCase>(
        () => _i12.CreateTodoUseCase(gh<_i182.TodoRepository>()));
    gh.factory<_i504.DeleteTodoUseCase>(
        () => _i504.DeleteTodoUseCase(gh<_i182.TodoRepository>()));
    gh.factory<_i389.GetAllTodosUseCase>(
        () => _i389.GetAllTodosUseCase(gh<_i182.TodoRepository>()));
    gh.factory<_i32.UpdateTodoUseCase>(
        () => _i32.UpdateTodoUseCase(gh<_i182.TodoRepository>()));
    gh.factory<_i1051.HasSubscriptionUseCase>(
        () => _i1051.HasSubscriptionUseCase(
              gh<_i182.AppRepository>(),
              gh<_i182.SubscriptionRepository>(),
            ));
    gh.factory<_i738.GetCategoriesUseCase>(
        () => _i738.GetCategoriesUseCase(gh<_i182.LanguageCourseRepository>()));
    gh.factory<_i106.GetLoggedInUserUseCase>(() =>
        _i106.GetLoggedInUserUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i919.GoogleLoginUseCase>(
        () => _i919.GoogleLoginUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i945.LoginUserUseCase>(
        () => _i945.LoginUserUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i119.RegistrationCompletionUseCase>(() =>
        _i119.RegistrationCompletionUseCase(
            gh<_i182.AuthenticationRepository>()));
    gh.factory<_i889.ResetPasswordRequestUseCase>(() =>
        _i889.ResetPasswordRequestUseCase(
            gh<_i182.AuthenticationRepository>()));
    gh.factory<_i845.ResetPasswordUseCase>(
        () => _i845.ResetPasswordUseCase(gh<_i182.AuthenticationRepository>()));
    gh.factory<_i323.UsernameRegistrationUseCase>(() =>
        _i323.UsernameRegistrationUseCase(
            gh<_i182.AuthenticationRepository>()));
    gh.factory<_i1031.GetAllUserBookmarkCoursesUseCase>(
        () => _i1031.GetAllUserBookmarkCoursesUseCase(
              gh<_i182.BookmarkRepository>(),
              gh<_i182.LanguageCourseRepository>(),
              gh<_i182.ExerciseRepository>(),
            ));
    gh.factory<_i855.CreateNewChatBotSessionUseCase>(() =>
        _i855.CreateNewChatBotSessionUseCase(gh<_i182.AiChatBotRepository>()));
    gh.factory<_i876.DeleteChatSessionUseCase>(
        () => _i876.DeleteChatSessionUseCase(gh<_i182.AiChatBotRepository>()));
    gh.factory<_i956.GetChatBotMessagesUseCase>(
        () => _i956.GetChatBotMessagesUseCase(gh<_i182.AiChatBotRepository>()));
    gh.factory<_i813.GetChatBotSessionsUseCase>(
        () => _i813.GetChatBotSessionsUseCase(gh<_i182.AiChatBotRepository>()));
    gh.factory<_i74.BookmarkCourseUseCase>(
        () => _i74.BookmarkCourseUseCase(gh<_i182.BookmarkRepository>()));
    gh.factory<_i807.RemoveBookmarkUseCase>(
        () => _i807.RemoveBookmarkUseCase(gh<_i182.BookmarkRepository>()));
    gh.factory<_i116.IsCourseBookmarkUseCase>(
        () => _i116.IsCourseBookmarkUseCase(gh<_i182.BookmarkRepository>()));
    gh.factory<_i366.DeleteFcmTokensUseCase>(
        () => _i366.DeleteFcmTokensUseCase(gh<_i182.NotificationRepository>()));
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
    gh.factory<_i239.CreateCommunityChatSessionUseCase>(() =>
        _i239.CreateCommunityChatSessionUseCase(
            gh<_i182.CommunityRepository>()));
    gh.factory<_i767.GetCommunityTopicsUseCase>(
        () => _i767.GetCommunityTopicsUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i608.GetPrivateSessionsUseCase>(
        () => _i608.GetPrivateSessionsUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i179.GetSessionsByTopicUseCase>(
        () => _i179.GetSessionsByTopicUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i444.GetSessionMessagesUseCase>(
        () => _i444.GetSessionMessagesUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i709.GetUserSessionsByTopicUseCase>(() =>
        _i709.GetUserSessionsByTopicUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i144.InitiatePrivateChatSessionUseCase>(() =>
        _i144.InitiatePrivateChatSessionUseCase(
            gh<_i182.CommunityRepository>()));
    gh.factory<_i1022.JoinChatSessionUseCase>(
        () => _i1022.JoinChatSessionUseCase(gh<_i182.CommunityRepository>()));
    gh.factory<_i845.CreateSubscriptionPaymentUseCase>(() =>
        _i845.CreateSubscriptionPaymentUseCase(
            gh<_i182.SubscriptionRepository>()));
    gh.factory<_i1054.GetAllSubscriptionUseCase>(() =>
        _i1054.GetAllSubscriptionUseCase(gh<_i182.SubscriptionRepository>()));
    gh.factory<_i1008.SwapSubscriptionPlanUseCase>(() =>
        _i1008.SwapSubscriptionPlanUseCase(gh<_i182.SubscriptionRepository>()));
    gh.factory<_i900.ClearCurrentUserDataUseCase>(
        () => _i900.ClearCurrentUserDataUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i75.GetCurrentPrefUserUseCase>(
        () => _i75.GetCurrentPrefUserUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i162.GetInitialAppDataUseCase>(
        () => _i162.GetInitialAppDataUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i217.GetPhoneImagesUseCase>(
        () => _i217.GetPhoneImagesUseCase(gh<_i182.AppRepository>()));
    gh.factory<_i246.GetUsersDataUseCase>(
        () => _i246.GetUsersDataUseCase(gh<_i182.AppRepository>()));
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
    gh.factory<_i765.GetAllLearningProgressUseCase>(
        () => _i765.GetAllLearningProgressUseCase(
              gh<_i182.ExerciseRepository>(),
              gh<_i182.LanguageCourseRepository>(),
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
    gh.factory<_i314.GetCategoryCoursesByLanguageUseCase>(
        () => _i314.GetCategoryCoursesByLanguageUseCase(
              gh<_i182.LanguageCourseRepository>(),
              gh<_i182.ExerciseRepository>(),
            ));
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
    gh.factory<_i1052.UpdateUserAvatarUseCase>(
        () => _i1052.UpdateUserAvatarUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i593.UpdateUserPasswordUseCase>(
        () => _i593.UpdateUserPasswordUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i1020.UpdateUserProfileUseCase>(
        () => _i1020.UpdateUserProfileUseCase(gh<_i182.ProfileRepository>()));
    gh.factory<_i522.VerifyEmailOtpUseCase>(
        () => _i522.VerifyEmailOtpUseCase(gh<_i182.ProfileRepository>()));
    return this;
  }
}
