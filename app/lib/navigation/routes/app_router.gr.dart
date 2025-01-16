// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/features/ai_chat_bot/views/ai_chat_bot_page.dart' as _i1;
import 'package:app/features/complete_registration/views/complete_registration_page.dart'
    as _i3;
import 'package:app/features/course/views/course_page.dart' as _i4;
import 'package:app/features/flash_card_learning/view/flash_card_learning_page.dart'
    as _i5;
import 'package:app/features/home/views/home_page.dart' as _i6;
import 'package:app/features/language_course/views/language_course_details_page.dart'
    as _i7;
import 'package:app/features/language_course/views/language_course_page.dart'
    as _i8;
import 'package:app/features/login/views/login_page.dart' as _i9;
import 'package:app/features/main/views/main_page.dart' as _i10;
import 'package:app/features/on_boarding/views/on_boarding_page.dart' as _i11;
import 'package:app/features/profile/views/profile_page.dart' as _i12;
import 'package:app/features/quiz_learning/view/quiz_learning_page.dart'
    as _i13;
import 'package:app/features/splash/views/splash_page.dart' as _i14;
import 'package:app/navigation/routes/app_router.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:logic/logic.dart' as _i17;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AiChatBotRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AiChatBotPage(),
      );
    },
    AiChatTabRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AiChatTabPage(),
      );
    },
    CompleteRegistrationRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CompleteRegistrationPage(),
      );
    },
    CourseRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CoursePage(),
      );
    },
    CourseTabRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CourseTabPage(),
      );
    },
    FlashCardLearningRoute.name: (routeData) {
      final args = routeData.argsAs<FlashCardLearningRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FlashCardLearningPage(
          key: args.key,
          languageCourseLearningContent: args.languageCourseLearningContent,
          learningLanguage: args.learningLanguage,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeTabPage(),
      );
    },
    LanguageCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseDetailsRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.LanguageCourseDetailsPage(
          key: args.key,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LanguageCourseRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.LanguageCoursePage(
          key: args.key,
          language: args.language,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MainPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnBoardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProfileTabPage(),
      );
    },
    QuizLearningRoute.name: (routeData) {
      final args = routeData.argsAs<QuizLearningRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.QuizLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AiChatBotPage]
class AiChatBotRoute extends _i15.PageRouteInfo<void> {
  const AiChatBotRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AiChatBotRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatBotRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AiChatTabPage]
class AiChatTabRoute extends _i15.PageRouteInfo<void> {
  const AiChatTabRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AiChatTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatTabRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteRegistrationPage]
class CompleteRegistrationRoute extends _i15.PageRouteInfo<void> {
  const CompleteRegistrationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CompleteRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteRegistrationRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CoursePage]
class CourseRoute extends _i15.PageRouteInfo<void> {
  const CourseRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CourseTabPage]
class CourseTabRoute extends _i15.PageRouteInfo<void> {
  const CourseTabRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CourseTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseTabRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FlashCardLearningPage]
class FlashCardLearningRoute
    extends _i15.PageRouteInfo<FlashCardLearningRouteArgs> {
  FlashCardLearningRoute({
    _i16.Key? key,
    required _i17.LanguageCourseLearningContent languageCourseLearningContent,
    _i17.LearningLanguage learningLanguage = _i17.LearningLanguage.english,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          FlashCardLearningRoute.name,
          args: FlashCardLearningRouteArgs(
            key: key,
            languageCourseLearningContent: languageCourseLearningContent,
            learningLanguage: learningLanguage,
          ),
          initialChildren: children,
        );

  static const String name = 'FlashCardLearningRoute';

  static const _i15.PageInfo<FlashCardLearningRouteArgs> page =
      _i15.PageInfo<FlashCardLearningRouteArgs>(name);
}

class FlashCardLearningRouteArgs {
  const FlashCardLearningRouteArgs({
    this.key,
    required this.languageCourseLearningContent,
    this.learningLanguage = _i17.LearningLanguage.english,
  });

  final _i16.Key? key;

  final _i17.LanguageCourseLearningContent languageCourseLearningContent;

  final _i17.LearningLanguage learningLanguage;

  @override
  String toString() {
    return 'FlashCardLearningRouteArgs{key: $key, languageCourseLearningContent: $languageCourseLearningContent, learningLanguage: $learningLanguage}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeTabPage]
class HomeTabRoute extends _i15.PageRouteInfo<void> {
  const HomeTabRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LanguageCourseDetailsPage]
class LanguageCourseDetailsRoute
    extends _i15.PageRouteInfo<LanguageCourseDetailsRouteArgs> {
  LanguageCourseDetailsRoute({
    _i16.Key? key,
    required _i17.LanguageCourse languageCourse,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          LanguageCourseDetailsRoute.name,
          args: LanguageCourseDetailsRouteArgs(
            key: key,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseDetailsRoute';

  static const _i15.PageInfo<LanguageCourseDetailsRouteArgs> page =
      _i15.PageInfo<LanguageCourseDetailsRouteArgs>(name);
}

class LanguageCourseDetailsRouteArgs {
  const LanguageCourseDetailsRouteArgs({
    this.key,
    required this.languageCourse,
  });

  final _i16.Key? key;

  final _i17.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'LanguageCourseDetailsRouteArgs{key: $key, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i8.LanguageCoursePage]
class LanguageCourseRoute extends _i15.PageRouteInfo<LanguageCourseRouteArgs> {
  LanguageCourseRoute({
    _i16.Key? key,
    required _i17.LearningLanguage language,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          LanguageCourseRoute.name,
          args: LanguageCourseRouteArgs(
            key: key,
            language: language,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseRoute';

  static const _i15.PageInfo<LanguageCourseRouteArgs> page =
      _i15.PageInfo<LanguageCourseRouteArgs>(name);
}

class LanguageCourseRouteArgs {
  const LanguageCourseRouteArgs({
    this.key,
    required this.language,
  });

  final _i16.Key? key;

  final _i17.LearningLanguage language;

  @override
  String toString() {
    return 'LanguageCourseRouteArgs{key: $key, language: $language}';
  }
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainPage]
class MainRoute extends _i15.PageRouteInfo<void> {
  const MainRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnBoardingPage]
class OnBoardingRoute extends _i15.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProfileTabPage]
class ProfileTabRoute extends _i15.PageRouteInfo<void> {
  const ProfileTabRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.QuizLearningPage]
class QuizLearningRoute extends _i15.PageRouteInfo<QuizLearningRouteArgs> {
  QuizLearningRoute({
    _i16.Key? key,
    required _i17.LearningLanguage learningLanguage,
    required _i17.LanguageCourseLearningContent languageCourseLearningContent,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          QuizLearningRoute.name,
          args: QuizLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizLearningRoute';

  static const _i15.PageInfo<QuizLearningRouteArgs> page =
      _i15.PageInfo<QuizLearningRouteArgs>(name);
}

class QuizLearningRouteArgs {
  const QuizLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
  });

  final _i16.Key? key;

  final _i17.LearningLanguage learningLanguage;

  final _i17.LanguageCourseLearningContent languageCourseLearningContent;

  @override
  String toString() {
    return 'QuizLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent}';
  }
}

/// generated route for
/// [_i14.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
