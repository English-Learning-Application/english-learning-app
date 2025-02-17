// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/common_view/common_feature_required_subscription_page.dart'
    as _i8;
import 'package:app/features/achievement_tracker/view/achievement_tracker_page.dart'
    as _i1;
import 'package:app/features/ai_chat_bot/views/ai_chat_bot_page.dart' as _i3;
import 'package:app/features/ai_chat_bot_details/view/ai_chat_bot_details_page.dart'
    as _i2;
import 'package:app/features/bookmark_courses/view/bookmark_courses_page.dart'
    as _i5;
import 'package:app/features/category_course_details/views/category_course_details_page.dart'
    as _i6;
import 'package:app/features/category_course_lesson/view/category_course_lesson_page.dart'
    as _i7;
import 'package:app/features/community/view/community_page.dart' as _i9;
import 'package:app/features/community_topic/view/community_topic_page.dart'
    as _i10;
import 'package:app/features/complete_registration/views/complete_registration_page.dart'
    as _i11;
import 'package:app/features/course/views/course_page.dart' as _i12;
import 'package:app/features/edit_profile/view/edit_profile_page.dart' as _i13;
import 'package:app/features/flash_card_learning/view/flash_card_learning_page.dart'
    as _i14;
import 'package:app/features/group_chat/view/group_chat_page.dart' as _i15;
import 'package:app/features/home/views/home_page.dart' as _i16;
import 'package:app/features/language_course/views/language_course_details_page.dart'
    as _i17;
import 'package:app/features/language_course/views/language_course_page.dart'
    as _i18;
import 'package:app/features/listening_learning/view/listening_learning_page.dart'
    as _i19;
import 'package:app/features/login/views/login_page.dart' as _i20;
import 'package:app/features/main/views/main_page.dart' as _i21;
import 'package:app/features/matching_learning/view/matching_learning_page.dart'
    as _i22;
import 'package:app/features/on_boarding/views/on_boarding_page.dart' as _i23;
import 'package:app/features/private_chat/view/private_chat_page.dart' as _i24;
import 'package:app/features/profile/views/profile_page.dart' as _i25;
import 'package:app/features/pronunciation_learning/view/pronunciation_learning_page.dart'
    as _i26;
import 'package:app/features/quiz_learning/view/quiz_learning_page.dart'
    as _i27;
import 'package:app/features/reset_password/view/reset_password_page.dart'
    as _i29;
import 'package:app/features/reset_password_confirmation/view/reset_password_confirmation_page.dart'
    as _i28;
import 'package:app/features/splash/views/splash_page.dart' as _i30;
import 'package:app/features/subscription/view/subscription_page.dart' as _i31;
import 'package:app/features/todo/view/todo_page.dart' as _i33;
import 'package:app/features/todo_details/view/todo_details_page.dart' as _i32;
import 'package:app/features/validate_email/view/validate_email_page.dart'
    as _i34;
import 'package:app/features/validate_phone_number/view/validate_phone_number_page.dart'
    as _i35;
import 'package:app/navigation/routes/app_router.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:flutter/material.dart' as _i37;
import 'package:logic/logic.dart' as _i38;

abstract class $AppRouter extends _i36.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i36.PageFactory> pagesMap = {
    AchievementTrackerRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AchievementTrackerPage(),
      );
    },
    AiChatBotDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AiChatBotDetailsRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AiChatBotDetailsPage(
          key: args.key,
          chatSession: args.chatSession,
        ),
      );
    },
    AiChatBotRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AiChatBotPage(),
      );
    },
    AiChatTabRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AiChatTabPage(),
      );
    },
    BookmarkCourseFlowRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BookmarkCourseFlowPage(),
      );
    },
    BookmarkCoursesRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookmarkCoursesPage(),
      );
    },
    CategoryCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryCourseDetailsRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CategoryCourseDetailsPage(
          key: args.key,
          category: args.category,
          categoryCourses: args.categoryCourses,
          language: args.language,
        ),
      );
    },
    CategoryCourseLessonRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryCourseLessonRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CategoryCourseLessonPage(
          key: args.key,
          languageCourseLearningContent: args.languageCourseLearningContent,
          categoryCourse: args.categoryCourse,
        ),
      );
    },
    CommonFeatureRequiredSubscriptionRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CommonFeatureRequiredSubscriptionPage(),
      );
    },
    CommunityFlowRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CommunityFlowPage(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CommunityPage(),
      );
    },
    CommunityTopicRoute.name: (routeData) {
      final args = routeData.argsAs<CommunityTopicRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.CommunityTopicPage(
          key: args.key,
          chatTopic: args.chatTopic,
        ),
      );
    },
    CompleteRegistrationRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.CompleteRegistrationPage(),
      );
    },
    CourseRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.CoursePage(),
      );
    },
    CourseTabRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CourseTabPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.EditProfilePage(),
      );
    },
    FlashCardLearningRoute.name: (routeData) {
      final args = routeData.argsAs<FlashCardLearningRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.FlashCardLearningPage(
          key: args.key,
          courseId: args.courseId,
          languageCourseLearningContent: args.languageCourseLearningContent,
          learningLanguage: args.learningLanguage,
        ),
      );
    },
    GroupChatRoute.name: (routeData) {
      final args = routeData.argsAs<GroupChatRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.GroupChatPage(
          key: args.key,
          chatSession: args.chatSession,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.HomePage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeTabPage(),
      );
    },
    LanguageCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseDetailsRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.LanguageCourseDetailsPage(
          key: args.key,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LanguageCourseRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.LanguageCoursePage(
          key: args.key,
          language: args.language,
        ),
      );
    },
    ListeningLearningRoute.name: (routeData) {
      final args = routeData.argsAs<ListeningLearningRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ListeningLearningPage(
          key: args.key,
          language: args.language,
          languageCourseLearningContent: args.languageCourseLearningContent,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.MainPage(),
      );
    },
    MatchingLearningRoute.name: (routeData) {
      final args = routeData.argsAs<MatchingLearningRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.MatchingLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContents: args.languageCourseLearningContents,
          learningType: args.learningType,
          courseId: args.courseId,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.OnBoardingPage(),
      );
    },
    PrivateChatRoute.name: (routeData) {
      final args = routeData.argsAs<PrivateChatRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.PrivateChatPage(
          key: args.key,
          chatSession: args.chatSession,
          receiver: args.receiver,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ProfilePage(),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileTabPage(),
      );
    },
    PronunciationLearningRoute.name: (routeData) {
      final args = routeData.argsAs<PronunciationLearningRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.PronunciationLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
          courseId: args.courseId,
        ),
      );
    },
    QuizLearningRoute.name: (routeData) {
      final args = routeData.argsAs<QuizLearningRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.QuizLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
          courseId: args.courseId,
        ),
      );
    },
    ResetPasswordConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordConfirmationRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.ResetPasswordConfirmationPage(
          key: args.key,
          emailOrPhoneNumber: args.emailOrPhoneNumber,
        ),
      );
    },
    ResetPasswordFlowRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPasswordFlowPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.ResetPasswordPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.SplashPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.SubscriptionPage(),
      );
    },
    TodoDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TodoDetailsRouteArgs>(
          orElse: () => const TodoDetailsRouteArgs());
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.TodoDetailsPage(
          key: args.key,
          todo: args.todo,
        ),
      );
    },
    TodoRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.TodoPage(),
      );
    },
    TodoTabRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TodoTabPage(),
      );
    },
    ValidateEmailRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.ValidateEmailPage(),
      );
    },
    ValidatePhoneNumberRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.ValidatePhoneNumberPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AchievementTrackerPage]
class AchievementTrackerRoute extends _i36.PageRouteInfo<void> {
  const AchievementTrackerRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AchievementTrackerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AchievementTrackerRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AiChatBotDetailsPage]
class AiChatBotDetailsRoute
    extends _i36.PageRouteInfo<AiChatBotDetailsRouteArgs> {
  AiChatBotDetailsRoute({
    _i37.Key? key,
    required _i38.ChatSession chatSession,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          AiChatBotDetailsRoute.name,
          args: AiChatBotDetailsRouteArgs(
            key: key,
            chatSession: chatSession,
          ),
          initialChildren: children,
        );

  static const String name = 'AiChatBotDetailsRoute';

  static const _i36.PageInfo<AiChatBotDetailsRouteArgs> page =
      _i36.PageInfo<AiChatBotDetailsRouteArgs>(name);
}

class AiChatBotDetailsRouteArgs {
  const AiChatBotDetailsRouteArgs({
    this.key,
    required this.chatSession,
  });

  final _i37.Key? key;

  final _i38.ChatSession chatSession;

  @override
  String toString() {
    return 'AiChatBotDetailsRouteArgs{key: $key, chatSession: $chatSession}';
  }
}

/// generated route for
/// [_i3.AiChatBotPage]
class AiChatBotRoute extends _i36.PageRouteInfo<void> {
  const AiChatBotRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AiChatBotRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatBotRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AiChatTabPage]
class AiChatTabRoute extends _i36.PageRouteInfo<void> {
  const AiChatTabRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AiChatTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatTabRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BookmarkCourseFlowPage]
class BookmarkCourseFlowRoute extends _i36.PageRouteInfo<void> {
  const BookmarkCourseFlowRoute({List<_i36.PageRouteInfo>? children})
      : super(
          BookmarkCourseFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkCourseFlowRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BookmarkCoursesPage]
class BookmarkCoursesRoute extends _i36.PageRouteInfo<void> {
  const BookmarkCoursesRoute({List<_i36.PageRouteInfo>? children})
      : super(
          BookmarkCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkCoursesRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CategoryCourseDetailsPage]
class CategoryCourseDetailsRoute
    extends _i36.PageRouteInfo<CategoryCourseDetailsRouteArgs> {
  CategoryCourseDetailsRoute({
    _i37.Key? key,
    required _i38.Category category,
    required List<_i38.CategoryCourse> categoryCourses,
    required _i38.LearningLanguage language,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          CategoryCourseDetailsRoute.name,
          args: CategoryCourseDetailsRouteArgs(
            key: key,
            category: category,
            categoryCourses: categoryCourses,
            language: language,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryCourseDetailsRoute';

  static const _i36.PageInfo<CategoryCourseDetailsRouteArgs> page =
      _i36.PageInfo<CategoryCourseDetailsRouteArgs>(name);
}

class CategoryCourseDetailsRouteArgs {
  const CategoryCourseDetailsRouteArgs({
    this.key,
    required this.category,
    required this.categoryCourses,
    required this.language,
  });

  final _i37.Key? key;

  final _i38.Category category;

  final List<_i38.CategoryCourse> categoryCourses;

  final _i38.LearningLanguage language;

  @override
  String toString() {
    return 'CategoryCourseDetailsRouteArgs{key: $key, category: $category, categoryCourses: $categoryCourses, language: $language}';
  }
}

/// generated route for
/// [_i7.CategoryCourseLessonPage]
class CategoryCourseLessonRoute
    extends _i36.PageRouteInfo<CategoryCourseLessonRouteArgs> {
  CategoryCourseLessonRoute({
    _i37.Key? key,
    required List<_i38.LanguageCourseLearningContent>
        languageCourseLearningContent,
    required _i38.CategoryCourse categoryCourse,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          CategoryCourseLessonRoute.name,
          args: CategoryCourseLessonRouteArgs(
            key: key,
            languageCourseLearningContent: languageCourseLearningContent,
            categoryCourse: categoryCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryCourseLessonRoute';

  static const _i36.PageInfo<CategoryCourseLessonRouteArgs> page =
      _i36.PageInfo<CategoryCourseLessonRouteArgs>(name);
}

class CategoryCourseLessonRouteArgs {
  const CategoryCourseLessonRouteArgs({
    this.key,
    required this.languageCourseLearningContent,
    required this.categoryCourse,
  });

  final _i37.Key? key;

  final List<_i38.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i38.CategoryCourse categoryCourse;

  @override
  String toString() {
    return 'CategoryCourseLessonRouteArgs{key: $key, languageCourseLearningContent: $languageCourseLearningContent, categoryCourse: $categoryCourse}';
  }
}

/// generated route for
/// [_i8.CommonFeatureRequiredSubscriptionPage]
class CommonFeatureRequiredSubscriptionRoute extends _i36.PageRouteInfo<void> {
  const CommonFeatureRequiredSubscriptionRoute(
      {List<_i36.PageRouteInfo>? children})
      : super(
          CommonFeatureRequiredSubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonFeatureRequiredSubscriptionRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CommunityFlowPage]
class CommunityFlowRoute extends _i36.PageRouteInfo<void> {
  const CommunityFlowRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CommunityFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityFlowRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CommunityPage]
class CommunityRoute extends _i36.PageRouteInfo<void> {
  const CommunityRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i10.CommunityTopicPage]
class CommunityTopicRoute extends _i36.PageRouteInfo<CommunityTopicRouteArgs> {
  CommunityTopicRoute({
    _i37.Key? key,
    required _i38.ChatTopic chatTopic,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          CommunityTopicRoute.name,
          args: CommunityTopicRouteArgs(
            key: key,
            chatTopic: chatTopic,
          ),
          initialChildren: children,
        );

  static const String name = 'CommunityTopicRoute';

  static const _i36.PageInfo<CommunityTopicRouteArgs> page =
      _i36.PageInfo<CommunityTopicRouteArgs>(name);
}

class CommunityTopicRouteArgs {
  const CommunityTopicRouteArgs({
    this.key,
    required this.chatTopic,
  });

  final _i37.Key? key;

  final _i38.ChatTopic chatTopic;

  @override
  String toString() {
    return 'CommunityTopicRouteArgs{key: $key, chatTopic: $chatTopic}';
  }
}

/// generated route for
/// [_i11.CompleteRegistrationPage]
class CompleteRegistrationRoute extends _i36.PageRouteInfo<void> {
  const CompleteRegistrationRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CompleteRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteRegistrationRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i12.CoursePage]
class CourseRoute extends _i36.PageRouteInfo<void> {
  const CourseRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CourseTabPage]
class CourseTabRoute extends _i36.PageRouteInfo<void> {
  const CourseTabRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CourseTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseTabRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i13.EditProfilePage]
class EditProfileRoute extends _i36.PageRouteInfo<void> {
  const EditProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i14.FlashCardLearningPage]
class FlashCardLearningRoute
    extends _i36.PageRouteInfo<FlashCardLearningRouteArgs> {
  FlashCardLearningRoute({
    _i37.Key? key,
    required String courseId,
    required List<_i38.LanguageCourseLearningContent>
        languageCourseLearningContent,
    _i38.LearningLanguage learningLanguage = _i38.LearningLanguage.english,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          FlashCardLearningRoute.name,
          args: FlashCardLearningRouteArgs(
            key: key,
            courseId: courseId,
            languageCourseLearningContent: languageCourseLearningContent,
            learningLanguage: learningLanguage,
          ),
          initialChildren: children,
        );

  static const String name = 'FlashCardLearningRoute';

  static const _i36.PageInfo<FlashCardLearningRouteArgs> page =
      _i36.PageInfo<FlashCardLearningRouteArgs>(name);
}

class FlashCardLearningRouteArgs {
  const FlashCardLearningRouteArgs({
    this.key,
    required this.courseId,
    required this.languageCourseLearningContent,
    this.learningLanguage = _i38.LearningLanguage.english,
  });

  final _i37.Key? key;

  final String courseId;

  final List<_i38.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i38.LearningLanguage learningLanguage;

  @override
  String toString() {
    return 'FlashCardLearningRouteArgs{key: $key, courseId: $courseId, languageCourseLearningContent: $languageCourseLearningContent, learningLanguage: $learningLanguage}';
  }
}

/// generated route for
/// [_i15.GroupChatPage]
class GroupChatRoute extends _i36.PageRouteInfo<GroupChatRouteArgs> {
  GroupChatRoute({
    _i37.Key? key,
    required _i38.ChatSession chatSession,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          GroupChatRoute.name,
          args: GroupChatRouteArgs(
            key: key,
            chatSession: chatSession,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupChatRoute';

  static const _i36.PageInfo<GroupChatRouteArgs> page =
      _i36.PageInfo<GroupChatRouteArgs>(name);
}

class GroupChatRouteArgs {
  const GroupChatRouteArgs({
    this.key,
    required this.chatSession,
  });

  final _i37.Key? key;

  final _i38.ChatSession chatSession;

  @override
  String toString() {
    return 'GroupChatRouteArgs{key: $key, chatSession: $chatSession}';
  }
}

/// generated route for
/// [_i16.HomePage]
class HomeRoute extends _i36.PageRouteInfo<void> {
  const HomeRoute({List<_i36.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeTabPage]
class HomeTabRoute extends _i36.PageRouteInfo<void> {
  const HomeTabRoute({List<_i36.PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i17.LanguageCourseDetailsPage]
class LanguageCourseDetailsRoute
    extends _i36.PageRouteInfo<LanguageCourseDetailsRouteArgs> {
  LanguageCourseDetailsRoute({
    _i37.Key? key,
    required _i38.LanguageCourse languageCourse,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          LanguageCourseDetailsRoute.name,
          args: LanguageCourseDetailsRouteArgs(
            key: key,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseDetailsRoute';

  static const _i36.PageInfo<LanguageCourseDetailsRouteArgs> page =
      _i36.PageInfo<LanguageCourseDetailsRouteArgs>(name);
}

class LanguageCourseDetailsRouteArgs {
  const LanguageCourseDetailsRouteArgs({
    this.key,
    required this.languageCourse,
  });

  final _i37.Key? key;

  final _i38.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'LanguageCourseDetailsRouteArgs{key: $key, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i18.LanguageCoursePage]
class LanguageCourseRoute extends _i36.PageRouteInfo<LanguageCourseRouteArgs> {
  LanguageCourseRoute({
    _i37.Key? key,
    required _i38.LearningLanguage language,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          LanguageCourseRoute.name,
          args: LanguageCourseRouteArgs(
            key: key,
            language: language,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseRoute';

  static const _i36.PageInfo<LanguageCourseRouteArgs> page =
      _i36.PageInfo<LanguageCourseRouteArgs>(name);
}

class LanguageCourseRouteArgs {
  const LanguageCourseRouteArgs({
    this.key,
    required this.language,
  });

  final _i37.Key? key;

  final _i38.LearningLanguage language;

  @override
  String toString() {
    return 'LanguageCourseRouteArgs{key: $key, language: $language}';
  }
}

/// generated route for
/// [_i19.ListeningLearningPage]
class ListeningLearningRoute
    extends _i36.PageRouteInfo<ListeningLearningRouteArgs> {
  ListeningLearningRoute({
    _i37.Key? key,
    required _i38.LearningLanguage language,
    required _i38.LanguageCourseLearningContent languageCourseLearningContent,
    required _i38.LanguageCourse languageCourse,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          ListeningLearningRoute.name,
          args: ListeningLearningRouteArgs(
            key: key,
            language: language,
            languageCourseLearningContent: languageCourseLearningContent,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'ListeningLearningRoute';

  static const _i36.PageInfo<ListeningLearningRouteArgs> page =
      _i36.PageInfo<ListeningLearningRouteArgs>(name);
}

class ListeningLearningRouteArgs {
  const ListeningLearningRouteArgs({
    this.key,
    required this.language,
    required this.languageCourseLearningContent,
    required this.languageCourse,
  });

  final _i37.Key? key;

  final _i38.LearningLanguage language;

  final _i38.LanguageCourseLearningContent languageCourseLearningContent;

  final _i38.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'ListeningLearningRouteArgs{key: $key, language: $language, languageCourseLearningContent: $languageCourseLearningContent, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i20.LoginPage]
class LoginRoute extends _i36.PageRouteInfo<void> {
  const LoginRoute({List<_i36.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i21.MainPage]
class MainRoute extends _i36.PageRouteInfo<void> {
  const MainRoute({List<_i36.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i22.MatchingLearningPage]
class MatchingLearningRoute
    extends _i36.PageRouteInfo<MatchingLearningRouteArgs> {
  MatchingLearningRoute({
    _i37.Key? key,
    required _i38.LearningLanguage learningLanguage,
    required List<_i38.LanguageCourseLearningContent>
        languageCourseLearningContents,
    _i38.LearningType? learningType,
    required String courseId,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          MatchingLearningRoute.name,
          args: MatchingLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContents: languageCourseLearningContents,
            learningType: learningType,
            courseId: courseId,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchingLearningRoute';

  static const _i36.PageInfo<MatchingLearningRouteArgs> page =
      _i36.PageInfo<MatchingLearningRouteArgs>(name);
}

class MatchingLearningRouteArgs {
  const MatchingLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContents,
    this.learningType,
    required this.courseId,
  });

  final _i37.Key? key;

  final _i38.LearningLanguage learningLanguage;

  final List<_i38.LanguageCourseLearningContent> languageCourseLearningContents;

  final _i38.LearningType? learningType;

  final String courseId;

  @override
  String toString() {
    return 'MatchingLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContents: $languageCourseLearningContents, learningType: $learningType, courseId: $courseId}';
  }
}

/// generated route for
/// [_i23.OnBoardingPage]
class OnBoardingRoute extends _i36.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i36.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i24.PrivateChatPage]
class PrivateChatRoute extends _i36.PageRouteInfo<PrivateChatRouteArgs> {
  PrivateChatRoute({
    _i37.Key? key,
    required _i38.ChatSession chatSession,
    required _i38.User receiver,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          PrivateChatRoute.name,
          args: PrivateChatRouteArgs(
            key: key,
            chatSession: chatSession,
            receiver: receiver,
          ),
          initialChildren: children,
        );

  static const String name = 'PrivateChatRoute';

  static const _i36.PageInfo<PrivateChatRouteArgs> page =
      _i36.PageInfo<PrivateChatRouteArgs>(name);
}

class PrivateChatRouteArgs {
  const PrivateChatRouteArgs({
    this.key,
    required this.chatSession,
    required this.receiver,
  });

  final _i37.Key? key;

  final _i38.ChatSession chatSession;

  final _i38.User receiver;

  @override
  String toString() {
    return 'PrivateChatRouteArgs{key: $key, chatSession: $chatSession, receiver: $receiver}';
  }
}

/// generated route for
/// [_i25.ProfilePage]
class ProfileRoute extends _i36.PageRouteInfo<void> {
  const ProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileTabPage]
class ProfileTabRoute extends _i36.PageRouteInfo<void> {
  const ProfileTabRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i26.PronunciationLearningPage]
class PronunciationLearningRoute
    extends _i36.PageRouteInfo<PronunciationLearningRouteArgs> {
  PronunciationLearningRoute({
    _i37.Key? key,
    required _i38.LearningLanguage learningLanguage,
    required List<_i38.LanguageCourseLearningContent>
        languageCourseLearningContent,
    required String courseId,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          PronunciationLearningRoute.name,
          args: PronunciationLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
            courseId: courseId,
          ),
          initialChildren: children,
        );

  static const String name = 'PronunciationLearningRoute';

  static const _i36.PageInfo<PronunciationLearningRouteArgs> page =
      _i36.PageInfo<PronunciationLearningRouteArgs>(name);
}

class PronunciationLearningRouteArgs {
  const PronunciationLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
    required this.courseId,
  });

  final _i37.Key? key;

  final _i38.LearningLanguage learningLanguage;

  final List<_i38.LanguageCourseLearningContent> languageCourseLearningContent;

  final String courseId;

  @override
  String toString() {
    return 'PronunciationLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent, courseId: $courseId}';
  }
}

/// generated route for
/// [_i27.QuizLearningPage]
class QuizLearningRoute extends _i36.PageRouteInfo<QuizLearningRouteArgs> {
  QuizLearningRoute({
    _i37.Key? key,
    required _i38.LearningLanguage learningLanguage,
    required List<_i38.LanguageCourseLearningContent>
        languageCourseLearningContent,
    required String courseId,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          QuizLearningRoute.name,
          args: QuizLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
            courseId: courseId,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizLearningRoute';

  static const _i36.PageInfo<QuizLearningRouteArgs> page =
      _i36.PageInfo<QuizLearningRouteArgs>(name);
}

class QuizLearningRouteArgs {
  const QuizLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
    required this.courseId,
  });

  final _i37.Key? key;

  final _i38.LearningLanguage learningLanguage;

  final List<_i38.LanguageCourseLearningContent> languageCourseLearningContent;

  final String courseId;

  @override
  String toString() {
    return 'QuizLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent, courseId: $courseId}';
  }
}

/// generated route for
/// [_i28.ResetPasswordConfirmationPage]
class ResetPasswordConfirmationRoute
    extends _i36.PageRouteInfo<ResetPasswordConfirmationRouteArgs> {
  ResetPasswordConfirmationRoute({
    _i37.Key? key,
    required String emailOrPhoneNumber,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          ResetPasswordConfirmationRoute.name,
          args: ResetPasswordConfirmationRouteArgs(
            key: key,
            emailOrPhoneNumber: emailOrPhoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordConfirmationRoute';

  static const _i36.PageInfo<ResetPasswordConfirmationRouteArgs> page =
      _i36.PageInfo<ResetPasswordConfirmationRouteArgs>(name);
}

class ResetPasswordConfirmationRouteArgs {
  const ResetPasswordConfirmationRouteArgs({
    this.key,
    required this.emailOrPhoneNumber,
  });

  final _i37.Key? key;

  final String emailOrPhoneNumber;

  @override
  String toString() {
    return 'ResetPasswordConfirmationRouteArgs{key: $key, emailOrPhoneNumber: $emailOrPhoneNumber}';
  }
}

/// generated route for
/// [_i4.ResetPasswordFlowPage]
class ResetPasswordFlowRoute extends _i36.PageRouteInfo<void> {
  const ResetPasswordFlowRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ResetPasswordFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordFlowRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ResetPasswordPage]
class ResetPasswordRoute extends _i36.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i30.SplashPage]
class SplashRoute extends _i36.PageRouteInfo<void> {
  const SplashRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SubscriptionPage]
class SubscriptionRoute extends _i36.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i32.TodoDetailsPage]
class TodoDetailsRoute extends _i36.PageRouteInfo<TodoDetailsRouteArgs> {
  TodoDetailsRoute({
    _i37.Key? key,
    _i38.UserTodo? todo,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          TodoDetailsRoute.name,
          args: TodoDetailsRouteArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'TodoDetailsRoute';

  static const _i36.PageInfo<TodoDetailsRouteArgs> page =
      _i36.PageInfo<TodoDetailsRouteArgs>(name);
}

class TodoDetailsRouteArgs {
  const TodoDetailsRouteArgs({
    this.key,
    this.todo,
  });

  final _i37.Key? key;

  final _i38.UserTodo? todo;

  @override
  String toString() {
    return 'TodoDetailsRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i33.TodoPage]
class TodoRoute extends _i36.PageRouteInfo<void> {
  const TodoRoute({List<_i36.PageRouteInfo>? children})
      : super(
          TodoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TodoTabPage]
class TodoTabRoute extends _i36.PageRouteInfo<void> {
  const TodoTabRoute({List<_i36.PageRouteInfo>? children})
      : super(
          TodoTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoTabRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i34.ValidateEmailPage]
class ValidateEmailRoute extends _i36.PageRouteInfo<void> {
  const ValidateEmailRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ValidateEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidateEmailRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i35.ValidatePhoneNumberPage]
class ValidatePhoneNumberRoute extends _i36.PageRouteInfo<void> {
  const ValidatePhoneNumberRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ValidatePhoneNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidatePhoneNumberRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}
