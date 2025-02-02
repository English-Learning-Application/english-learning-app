// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/common_view/common_feature_required_subscription_page.dart'
    as _i4;
import 'package:app/features/ai_chat_bot/views/ai_chat_bot_page.dart' as _i2;
import 'package:app/features/ai_chat_bot_details/view/ai_chat_bot_details_page.dart'
    as _i1;
import 'package:app/features/complete_registration/views/complete_registration_page.dart'
    as _i5;
import 'package:app/features/course/views/course_page.dart' as _i6;
import 'package:app/features/edit_profile/view/edit_profile_page.dart' as _i7;
import 'package:app/features/flash_card_learning/view/flash_card_learning_page.dart'
    as _i8;
import 'package:app/features/home/views/home_page.dart' as _i9;
import 'package:app/features/language_course/views/language_course_details_page.dart'
    as _i10;
import 'package:app/features/language_course/views/language_course_page.dart'
    as _i11;
import 'package:app/features/listening_learning/view/listening_learning_page.dart'
    as _i12;
import 'package:app/features/login/views/login_page.dart' as _i13;
import 'package:app/features/main/views/main_page.dart' as _i14;
import 'package:app/features/matching_learning/view/matching_learning_page.dart'
    as _i15;
import 'package:app/features/on_boarding/views/on_boarding_page.dart' as _i16;
import 'package:app/features/profile/views/profile_page.dart' as _i17;
import 'package:app/features/pronunciation_learning/view/pronunciation_learning_page.dart'
    as _i18;
import 'package:app/features/quiz_learning/view/quiz_learning_page.dart'
    as _i19;
import 'package:app/features/splash/views/splash_page.dart' as _i20;
import 'package:app/features/subscription/view/subscription_page.dart' as _i21;
import 'package:app/features/validate_email/view/validate_email_page.dart'
    as _i22;
import 'package:app/features/validate_phone_number/view/validate_phone_number_page.dart'
    as _i23;
import 'package:app/navigation/routes/app_router.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i25;
import 'package:logic/logic.dart' as _i26;

abstract class $AppRouter extends _i24.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    AiChatBotDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AiChatBotDetailsRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AiChatBotDetailsPage(
          key: args.key,
          chatSession: args.chatSession,
        ),
      );
    },
    AiChatBotRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AiChatBotPage(),
      );
    },
    AiChatTabRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AiChatTabPage(),
      );
    },
    CommonFeatureRequiredSubscriptionRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CommonFeatureRequiredSubscriptionPage(),
      );
    },
    CompleteRegistrationRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompleteRegistrationPage(),
      );
    },
    CourseRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CoursePage(),
      );
    },
    CourseTabRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CourseTabPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.EditProfilePage(key: args.key),
      );
    },
    FlashCardLearningRoute.name: (routeData) {
      final args = routeData.argsAs<FlashCardLearningRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.FlashCardLearningPage(
          key: args.key,
          languageCourseLearningContent: args.languageCourseLearningContent,
          learningLanguage: args.learningLanguage,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomePage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTabPage(),
      );
    },
    LanguageCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseDetailsRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.LanguageCourseDetailsPage(
          key: args.key,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LanguageCourseRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.LanguageCoursePage(
          key: args.key,
          language: args.language,
        ),
      );
    },
    ListeningLearningRoute.name: (routeData) {
      final args = routeData.argsAs<ListeningLearningRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ListeningLearningPage(
          key: args.key,
          language: args.language,
          languageCourseLearningContent: args.languageCourseLearningContent,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MainPage(),
      );
    },
    MatchingLearningRoute.name: (routeData) {
      final args = routeData.argsAs<MatchingLearningRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.MatchingLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContents: args.languageCourseLearningContents,
          learningType: args.learningType,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.OnBoardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ProfilePage(),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileTabPage(),
      );
    },
    PronunciationLearningRoute.name: (routeData) {
      final args = routeData.argsAs<PronunciationLearningRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.PronunciationLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
        ),
      );
    },
    QuizLearningRoute.name: (routeData) {
      final args = routeData.argsAs<QuizLearningRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.QuizLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SplashPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SubscriptionPage(),
      );
    },
    ValidateEmailRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ValidateEmailPage(),
      );
    },
    ValidatePhoneNumberRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ValidatePhoneNumberPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AiChatBotDetailsPage]
class AiChatBotDetailsRoute
    extends _i24.PageRouteInfo<AiChatBotDetailsRouteArgs> {
  AiChatBotDetailsRoute({
    _i25.Key? key,
    required _i26.ChatSession chatSession,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          AiChatBotDetailsRoute.name,
          args: AiChatBotDetailsRouteArgs(
            key: key,
            chatSession: chatSession,
          ),
          initialChildren: children,
        );

  static const String name = 'AiChatBotDetailsRoute';

  static const _i24.PageInfo<AiChatBotDetailsRouteArgs> page =
      _i24.PageInfo<AiChatBotDetailsRouteArgs>(name);
}

class AiChatBotDetailsRouteArgs {
  const AiChatBotDetailsRouteArgs({
    this.key,
    required this.chatSession,
  });

  final _i25.Key? key;

  final _i26.ChatSession chatSession;

  @override
  String toString() {
    return 'AiChatBotDetailsRouteArgs{key: $key, chatSession: $chatSession}';
  }
}

/// generated route for
/// [_i2.AiChatBotPage]
class AiChatBotRoute extends _i24.PageRouteInfo<void> {
  const AiChatBotRoute({List<_i24.PageRouteInfo>? children})
      : super(
          AiChatBotRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatBotRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AiChatTabPage]
class AiChatTabRoute extends _i24.PageRouteInfo<void> {
  const AiChatTabRoute({List<_i24.PageRouteInfo>? children})
      : super(
          AiChatTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatTabRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CommonFeatureRequiredSubscriptionPage]
class CommonFeatureRequiredSubscriptionRoute extends _i24.PageRouteInfo<void> {
  const CommonFeatureRequiredSubscriptionRoute(
      {List<_i24.PageRouteInfo>? children})
      : super(
          CommonFeatureRequiredSubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonFeatureRequiredSubscriptionRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CompleteRegistrationPage]
class CompleteRegistrationRoute extends _i24.PageRouteInfo<void> {
  const CompleteRegistrationRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CompleteRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteRegistrationRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CoursePage]
class CourseRoute extends _i24.PageRouteInfo<void> {
  const CourseRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CourseTabPage]
class CourseTabRoute extends _i24.PageRouteInfo<void> {
  const CourseTabRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CourseTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseTabRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EditProfilePage]
class EditProfileRoute extends _i24.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    dynamic key,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i24.PageInfo<EditProfileRouteArgs> page =
      _i24.PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.FlashCardLearningPage]
class FlashCardLearningRoute
    extends _i24.PageRouteInfo<FlashCardLearningRouteArgs> {
  FlashCardLearningRoute({
    _i25.Key? key,
    required List<_i26.LanguageCourseLearningContent>
        languageCourseLearningContent,
    _i26.LearningLanguage learningLanguage = _i26.LearningLanguage.english,
    List<_i24.PageRouteInfo>? children,
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

  static const _i24.PageInfo<FlashCardLearningRouteArgs> page =
      _i24.PageInfo<FlashCardLearningRouteArgs>(name);
}

class FlashCardLearningRouteArgs {
  const FlashCardLearningRouteArgs({
    this.key,
    required this.languageCourseLearningContent,
    this.learningLanguage = _i26.LearningLanguage.english,
  });

  final _i25.Key? key;

  final List<_i26.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i26.LearningLanguage learningLanguage;

  @override
  String toString() {
    return 'FlashCardLearningRouteArgs{key: $key, languageCourseLearningContent: $languageCourseLearningContent, learningLanguage: $learningLanguage}';
  }
}

/// generated route for
/// [_i9.HomePage]
class HomeRoute extends _i24.PageRouteInfo<void> {
  const HomeRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeTabPage]
class HomeTabRoute extends _i24.PageRouteInfo<void> {
  const HomeTabRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LanguageCourseDetailsPage]
class LanguageCourseDetailsRoute
    extends _i24.PageRouteInfo<LanguageCourseDetailsRouteArgs> {
  LanguageCourseDetailsRoute({
    _i25.Key? key,
    required _i26.LanguageCourse languageCourse,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          LanguageCourseDetailsRoute.name,
          args: LanguageCourseDetailsRouteArgs(
            key: key,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseDetailsRoute';

  static const _i24.PageInfo<LanguageCourseDetailsRouteArgs> page =
      _i24.PageInfo<LanguageCourseDetailsRouteArgs>(name);
}

class LanguageCourseDetailsRouteArgs {
  const LanguageCourseDetailsRouteArgs({
    this.key,
    required this.languageCourse,
  });

  final _i25.Key? key;

  final _i26.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'LanguageCourseDetailsRouteArgs{key: $key, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i11.LanguageCoursePage]
class LanguageCourseRoute extends _i24.PageRouteInfo<LanguageCourseRouteArgs> {
  LanguageCourseRoute({
    _i25.Key? key,
    required _i26.LearningLanguage language,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          LanguageCourseRoute.name,
          args: LanguageCourseRouteArgs(
            key: key,
            language: language,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseRoute';

  static const _i24.PageInfo<LanguageCourseRouteArgs> page =
      _i24.PageInfo<LanguageCourseRouteArgs>(name);
}

class LanguageCourseRouteArgs {
  const LanguageCourseRouteArgs({
    this.key,
    required this.language,
  });

  final _i25.Key? key;

  final _i26.LearningLanguage language;

  @override
  String toString() {
    return 'LanguageCourseRouteArgs{key: $key, language: $language}';
  }
}

/// generated route for
/// [_i12.ListeningLearningPage]
class ListeningLearningRoute
    extends _i24.PageRouteInfo<ListeningLearningRouteArgs> {
  ListeningLearningRoute({
    _i25.Key? key,
    required _i26.LearningLanguage language,
    required _i26.LanguageCourseLearningContent languageCourseLearningContent,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          ListeningLearningRoute.name,
          args: ListeningLearningRouteArgs(
            key: key,
            language: language,
            languageCourseLearningContent: languageCourseLearningContent,
          ),
          initialChildren: children,
        );

  static const String name = 'ListeningLearningRoute';

  static const _i24.PageInfo<ListeningLearningRouteArgs> page =
      _i24.PageInfo<ListeningLearningRouteArgs>(name);
}

class ListeningLearningRouteArgs {
  const ListeningLearningRouteArgs({
    this.key,
    required this.language,
    required this.languageCourseLearningContent,
  });

  final _i25.Key? key;

  final _i26.LearningLanguage language;

  final _i26.LanguageCourseLearningContent languageCourseLearningContent;

  @override
  String toString() {
    return 'ListeningLearningRouteArgs{key: $key, language: $language, languageCourseLearningContent: $languageCourseLearningContent}';
  }
}

/// generated route for
/// [_i13.LoginPage]
class LoginRoute extends _i24.PageRouteInfo<void> {
  const LoginRoute({List<_i24.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MainPage]
class MainRoute extends _i24.PageRouteInfo<void> {
  const MainRoute({List<_i24.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MatchingLearningPage]
class MatchingLearningRoute
    extends _i24.PageRouteInfo<MatchingLearningRouteArgs> {
  MatchingLearningRoute({
    _i25.Key? key,
    required _i26.LearningLanguage learningLanguage,
    required List<_i26.LanguageCourseLearningContent>
        languageCourseLearningContents,
    _i26.LearningType? learningType,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          MatchingLearningRoute.name,
          args: MatchingLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContents: languageCourseLearningContents,
            learningType: learningType,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchingLearningRoute';

  static const _i24.PageInfo<MatchingLearningRouteArgs> page =
      _i24.PageInfo<MatchingLearningRouteArgs>(name);
}

class MatchingLearningRouteArgs {
  const MatchingLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContents,
    this.learningType,
  });

  final _i25.Key? key;

  final _i26.LearningLanguage learningLanguage;

  final List<_i26.LanguageCourseLearningContent> languageCourseLearningContents;

  final _i26.LearningType? learningType;

  @override
  String toString() {
    return 'MatchingLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContents: $languageCourseLearningContents, learningType: $learningType}';
  }
}

/// generated route for
/// [_i16.OnBoardingPage]
class OnBoardingRoute extends _i24.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i24.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ProfilePage]
class ProfileRoute extends _i24.PageRouteInfo<void> {
  const ProfileRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileTabPage]
class ProfileTabRoute extends _i24.PageRouteInfo<void> {
  const ProfileTabRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PronunciationLearningPage]
class PronunciationLearningRoute
    extends _i24.PageRouteInfo<PronunciationLearningRouteArgs> {
  PronunciationLearningRoute({
    _i25.Key? key,
    required _i26.LearningLanguage learningLanguage,
    required List<_i26.LanguageCourseLearningContent>
        languageCourseLearningContent,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          PronunciationLearningRoute.name,
          args: PronunciationLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
          ),
          initialChildren: children,
        );

  static const String name = 'PronunciationLearningRoute';

  static const _i24.PageInfo<PronunciationLearningRouteArgs> page =
      _i24.PageInfo<PronunciationLearningRouteArgs>(name);
}

class PronunciationLearningRouteArgs {
  const PronunciationLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
  });

  final _i25.Key? key;

  final _i26.LearningLanguage learningLanguage;

  final List<_i26.LanguageCourseLearningContent> languageCourseLearningContent;

  @override
  String toString() {
    return 'PronunciationLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent}';
  }
}

/// generated route for
/// [_i19.QuizLearningPage]
class QuizLearningRoute extends _i24.PageRouteInfo<QuizLearningRouteArgs> {
  QuizLearningRoute({
    _i25.Key? key,
    required _i26.LearningLanguage learningLanguage,
    required List<_i26.LanguageCourseLearningContent>
        languageCourseLearningContent,
    List<_i24.PageRouteInfo>? children,
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

  static const _i24.PageInfo<QuizLearningRouteArgs> page =
      _i24.PageInfo<QuizLearningRouteArgs>(name);
}

class QuizLearningRouteArgs {
  const QuizLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
  });

  final _i25.Key? key;

  final _i26.LearningLanguage learningLanguage;

  final List<_i26.LanguageCourseLearningContent> languageCourseLearningContent;

  @override
  String toString() {
    return 'QuizLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent}';
  }
}

/// generated route for
/// [_i20.SplashPage]
class SplashRoute extends _i24.PageRouteInfo<void> {
  const SplashRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SubscriptionPage]
class SubscriptionRoute extends _i24.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ValidateEmailPage]
class ValidateEmailRoute extends _i24.PageRouteInfo<void> {
  const ValidateEmailRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ValidateEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidateEmailRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ValidatePhoneNumberPage]
class ValidatePhoneNumberRoute extends _i24.PageRouteInfo<void> {
  const ValidatePhoneNumberRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ValidatePhoneNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidatePhoneNumberRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}
