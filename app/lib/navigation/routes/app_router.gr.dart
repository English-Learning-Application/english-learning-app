// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/common_view/common_feature_required_subscription_page.dart'
    as _i5;
import 'package:app/features/ai_chat_bot/views/ai_chat_bot_page.dart' as _i2;
import 'package:app/features/ai_chat_bot_details/view/ai_chat_bot_details_page.dart'
    as _i1;
import 'package:app/features/category_course_details/views/category_course_details_page.dart'
    as _i4;
import 'package:app/features/community/view/community_page.dart' as _i6;
import 'package:app/features/community_topic/view/community_topic_page.dart'
    as _i7;
import 'package:app/features/complete_registration/views/complete_registration_page.dart'
    as _i8;
import 'package:app/features/course/views/course_page.dart' as _i9;
import 'package:app/features/edit_profile/view/edit_profile_page.dart' as _i10;
import 'package:app/features/flash_card_learning/view/flash_card_learning_page.dart'
    as _i11;
import 'package:app/features/group_chat/view/group_chat_page.dart' as _i12;
import 'package:app/features/home/views/home_page.dart' as _i13;
import 'package:app/features/language_course/views/language_course_details_page.dart'
    as _i14;
import 'package:app/features/language_course/views/language_course_page.dart'
    as _i15;
import 'package:app/features/listening_learning/view/listening_learning_page.dart'
    as _i16;
import 'package:app/features/login/views/login_page.dart' as _i17;
import 'package:app/features/main/views/main_page.dart' as _i18;
import 'package:app/features/matching_learning/view/matching_learning_page.dart'
    as _i19;
import 'package:app/features/on_boarding/views/on_boarding_page.dart' as _i20;
import 'package:app/features/private_chat/view/private_chat_page.dart' as _i21;
import 'package:app/features/profile/views/profile_page.dart' as _i22;
import 'package:app/features/pronunciation_learning/view/pronunciation_learning_page.dart'
    as _i23;
import 'package:app/features/quiz_learning/view/quiz_learning_page.dart'
    as _i24;
import 'package:app/features/splash/views/splash_page.dart' as _i25;
import 'package:app/features/subscription/view/subscription_page.dart' as _i26;
import 'package:app/features/validate_email/view/validate_email_page.dart'
    as _i27;
import 'package:app/features/validate_phone_number/view/validate_phone_number_page.dart'
    as _i28;
import 'package:app/navigation/routes/app_router.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i29;
import 'package:flutter/material.dart' as _i30;
import 'package:logic/logic.dart' as _i31;

abstract class $AppRouter extends _i29.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i29.PageFactory> pagesMap = {
    AiChatBotDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AiChatBotDetailsRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AiChatBotDetailsPage(
          key: args.key,
          chatSession: args.chatSession,
        ),
      );
    },
    AiChatBotRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AiChatBotPage(),
      );
    },
    AiChatTabRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AiChatTabPage(),
      );
    },
    CategoryCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryCourseDetailsRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CategoryCourseDetailsPage(
          key: args.key,
          category: args.category,
          categoryCourses: args.categoryCourses,
          language: args.language,
        ),
      );
    },
    CommonFeatureRequiredSubscriptionRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CommonFeatureRequiredSubscriptionPage(),
      );
    },
    CommunityFlowRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CommunityFlowPage(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CommunityPage(),
      );
    },
    CommunityTopicRoute.name: (routeData) {
      final args = routeData.argsAs<CommunityTopicRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CommunityTopicPage(
          key: args.key,
          chatTopic: args.chatTopic,
        ),
      );
    },
    CompleteRegistrationRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CompleteRegistrationPage(),
      );
    },
    CourseRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CoursePage(),
      );
    },
    CourseTabRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CourseTabPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.EditProfilePage(key: args.key),
      );
    },
    FlashCardLearningRoute.name: (routeData) {
      final args = routeData.argsAs<FlashCardLearningRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.FlashCardLearningPage(
          key: args.key,
          languageCourse: args.languageCourse,
          languageCourseLearningContent: args.languageCourseLearningContent,
          learningLanguage: args.learningLanguage,
        ),
      );
    },
    GroupChatRoute.name: (routeData) {
      final args = routeData.argsAs<GroupChatRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.GroupChatPage(
          key: args.key,
          chatSession: args.chatSession,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HomePage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTabPage(),
      );
    },
    LanguageCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseDetailsRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.LanguageCourseDetailsPage(
          key: args.key,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LanguageCourseRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageCourseRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.LanguageCoursePage(
          key: args.key,
          language: args.language,
        ),
      );
    },
    ListeningLearningRoute.name: (routeData) {
      final args = routeData.argsAs<ListeningLearningRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ListeningLearningPage(
          key: args.key,
          language: args.language,
          languageCourseLearningContent: args.languageCourseLearningContent,
          languageCourse: args.languageCourse,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.MainPage(),
      );
    },
    MatchingLearningRoute.name: (routeData) {
      final args = routeData.argsAs<MatchingLearningRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.MatchingLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContents: args.languageCourseLearningContents,
          learningType: args.learningType,
          languageCourse: args.languageCourse,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.OnBoardingPage(),
      );
    },
    PrivateChatRoute.name: (routeData) {
      final args = routeData.argsAs<PrivateChatRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.PrivateChatPage(
          key: args.key,
          chatSession: args.chatSession,
          receiver: args.receiver,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ProfilePage(),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileTabPage(),
      );
    },
    PronunciationLearningRoute.name: (routeData) {
      final args = routeData.argsAs<PronunciationLearningRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.PronunciationLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
          languageCourse: args.languageCourse,
        ),
      );
    },
    QuizLearningRoute.name: (routeData) {
      final args = routeData.argsAs<QuizLearningRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.QuizLearningPage(
          key: args.key,
          learningLanguage: args.learningLanguage,
          languageCourseLearningContent: args.languageCourseLearningContent,
          languageCourse: args.languageCourse,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SplashPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SubscriptionPage(),
      );
    },
    ValidateEmailRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ValidateEmailPage(),
      );
    },
    ValidatePhoneNumberRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ValidatePhoneNumberPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AiChatBotDetailsPage]
class AiChatBotDetailsRoute
    extends _i29.PageRouteInfo<AiChatBotDetailsRouteArgs> {
  AiChatBotDetailsRoute({
    _i30.Key? key,
    required _i31.ChatSession chatSession,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          AiChatBotDetailsRoute.name,
          args: AiChatBotDetailsRouteArgs(
            key: key,
            chatSession: chatSession,
          ),
          initialChildren: children,
        );

  static const String name = 'AiChatBotDetailsRoute';

  static const _i29.PageInfo<AiChatBotDetailsRouteArgs> page =
      _i29.PageInfo<AiChatBotDetailsRouteArgs>(name);
}

class AiChatBotDetailsRouteArgs {
  const AiChatBotDetailsRouteArgs({
    this.key,
    required this.chatSession,
  });

  final _i30.Key? key;

  final _i31.ChatSession chatSession;

  @override
  String toString() {
    return 'AiChatBotDetailsRouteArgs{key: $key, chatSession: $chatSession}';
  }
}

/// generated route for
/// [_i2.AiChatBotPage]
class AiChatBotRoute extends _i29.PageRouteInfo<void> {
  const AiChatBotRoute({List<_i29.PageRouteInfo>? children})
      : super(
          AiChatBotRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatBotRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AiChatTabPage]
class AiChatTabRoute extends _i29.PageRouteInfo<void> {
  const AiChatTabRoute({List<_i29.PageRouteInfo>? children})
      : super(
          AiChatTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiChatTabRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryCourseDetailsPage]
class CategoryCourseDetailsRoute
    extends _i29.PageRouteInfo<CategoryCourseDetailsRouteArgs> {
  CategoryCourseDetailsRoute({
    _i30.Key? key,
    required _i31.Category category,
    required List<_i31.CategoryCourse> categoryCourses,
    required _i31.LearningLanguage language,
    List<_i29.PageRouteInfo>? children,
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

  static const _i29.PageInfo<CategoryCourseDetailsRouteArgs> page =
      _i29.PageInfo<CategoryCourseDetailsRouteArgs>(name);
}

class CategoryCourseDetailsRouteArgs {
  const CategoryCourseDetailsRouteArgs({
    this.key,
    required this.category,
    required this.categoryCourses,
    required this.language,
  });

  final _i30.Key? key;

  final _i31.Category category;

  final List<_i31.CategoryCourse> categoryCourses;

  final _i31.LearningLanguage language;

  @override
  String toString() {
    return 'CategoryCourseDetailsRouteArgs{key: $key, category: $category, categoryCourses: $categoryCourses, language: $language}';
  }
}

/// generated route for
/// [_i5.CommonFeatureRequiredSubscriptionPage]
class CommonFeatureRequiredSubscriptionRoute extends _i29.PageRouteInfo<void> {
  const CommonFeatureRequiredSubscriptionRoute(
      {List<_i29.PageRouteInfo>? children})
      : super(
          CommonFeatureRequiredSubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonFeatureRequiredSubscriptionRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CommunityFlowPage]
class CommunityFlowRoute extends _i29.PageRouteInfo<void> {
  const CommunityFlowRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CommunityFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityFlowRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CommunityPage]
class CommunityRoute extends _i29.PageRouteInfo<void> {
  const CommunityRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CommunityTopicPage]
class CommunityTopicRoute extends _i29.PageRouteInfo<CommunityTopicRouteArgs> {
  CommunityTopicRoute({
    _i30.Key? key,
    required _i31.ChatTopic chatTopic,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          CommunityTopicRoute.name,
          args: CommunityTopicRouteArgs(
            key: key,
            chatTopic: chatTopic,
          ),
          initialChildren: children,
        );

  static const String name = 'CommunityTopicRoute';

  static const _i29.PageInfo<CommunityTopicRouteArgs> page =
      _i29.PageInfo<CommunityTopicRouteArgs>(name);
}

class CommunityTopicRouteArgs {
  const CommunityTopicRouteArgs({
    this.key,
    required this.chatTopic,
  });

  final _i30.Key? key;

  final _i31.ChatTopic chatTopic;

  @override
  String toString() {
    return 'CommunityTopicRouteArgs{key: $key, chatTopic: $chatTopic}';
  }
}

/// generated route for
/// [_i8.CompleteRegistrationPage]
class CompleteRegistrationRoute extends _i29.PageRouteInfo<void> {
  const CompleteRegistrationRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CompleteRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteRegistrationRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CoursePage]
class CourseRoute extends _i29.PageRouteInfo<void> {
  const CourseRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CourseTabPage]
class CourseTabRoute extends _i29.PageRouteInfo<void> {
  const CourseTabRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CourseTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseTabRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i10.EditProfilePage]
class EditProfileRoute extends _i29.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    dynamic key,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i29.PageInfo<EditProfileRouteArgs> page =
      _i29.PageInfo<EditProfileRouteArgs>(name);
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
/// [_i11.FlashCardLearningPage]
class FlashCardLearningRoute
    extends _i29.PageRouteInfo<FlashCardLearningRouteArgs> {
  FlashCardLearningRoute({
    _i30.Key? key,
    required _i31.LanguageCourse languageCourse,
    required List<_i31.LanguageCourseLearningContent>
        languageCourseLearningContent,
    _i31.LearningLanguage learningLanguage = _i31.LearningLanguage.english,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          FlashCardLearningRoute.name,
          args: FlashCardLearningRouteArgs(
            key: key,
            languageCourse: languageCourse,
            languageCourseLearningContent: languageCourseLearningContent,
            learningLanguage: learningLanguage,
          ),
          initialChildren: children,
        );

  static const String name = 'FlashCardLearningRoute';

  static const _i29.PageInfo<FlashCardLearningRouteArgs> page =
      _i29.PageInfo<FlashCardLearningRouteArgs>(name);
}

class FlashCardLearningRouteArgs {
  const FlashCardLearningRouteArgs({
    this.key,
    required this.languageCourse,
    required this.languageCourseLearningContent,
    this.learningLanguage = _i31.LearningLanguage.english,
  });

  final _i30.Key? key;

  final _i31.LanguageCourse languageCourse;

  final List<_i31.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i31.LearningLanguage learningLanguage;

  @override
  String toString() {
    return 'FlashCardLearningRouteArgs{key: $key, languageCourse: $languageCourse, languageCourseLearningContent: $languageCourseLearningContent, learningLanguage: $learningLanguage}';
  }
}

/// generated route for
/// [_i12.GroupChatPage]
class GroupChatRoute extends _i29.PageRouteInfo<GroupChatRouteArgs> {
  GroupChatRoute({
    _i30.Key? key,
    required _i31.ChatSession chatSession,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          GroupChatRoute.name,
          args: GroupChatRouteArgs(
            key: key,
            chatSession: chatSession,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupChatRoute';

  static const _i29.PageInfo<GroupChatRouteArgs> page =
      _i29.PageInfo<GroupChatRouteArgs>(name);
}

class GroupChatRouteArgs {
  const GroupChatRouteArgs({
    this.key,
    required this.chatSession,
  });

  final _i30.Key? key;

  final _i31.ChatSession chatSession;

  @override
  String toString() {
    return 'GroupChatRouteArgs{key: $key, chatSession: $chatSession}';
  }
}

/// generated route for
/// [_i13.HomePage]
class HomeRoute extends _i29.PageRouteInfo<void> {
  const HomeRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeTabPage]
class HomeTabRoute extends _i29.PageRouteInfo<void> {
  const HomeTabRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i14.LanguageCourseDetailsPage]
class LanguageCourseDetailsRoute
    extends _i29.PageRouteInfo<LanguageCourseDetailsRouteArgs> {
  LanguageCourseDetailsRoute({
    _i30.Key? key,
    required _i31.LanguageCourse languageCourse,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          LanguageCourseDetailsRoute.name,
          args: LanguageCourseDetailsRouteArgs(
            key: key,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseDetailsRoute';

  static const _i29.PageInfo<LanguageCourseDetailsRouteArgs> page =
      _i29.PageInfo<LanguageCourseDetailsRouteArgs>(name);
}

class LanguageCourseDetailsRouteArgs {
  const LanguageCourseDetailsRouteArgs({
    this.key,
    required this.languageCourse,
  });

  final _i30.Key? key;

  final _i31.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'LanguageCourseDetailsRouteArgs{key: $key, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i15.LanguageCoursePage]
class LanguageCourseRoute extends _i29.PageRouteInfo<LanguageCourseRouteArgs> {
  LanguageCourseRoute({
    _i30.Key? key,
    required _i31.LearningLanguage language,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          LanguageCourseRoute.name,
          args: LanguageCourseRouteArgs(
            key: key,
            language: language,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageCourseRoute';

  static const _i29.PageInfo<LanguageCourseRouteArgs> page =
      _i29.PageInfo<LanguageCourseRouteArgs>(name);
}

class LanguageCourseRouteArgs {
  const LanguageCourseRouteArgs({
    this.key,
    required this.language,
  });

  final _i30.Key? key;

  final _i31.LearningLanguage language;

  @override
  String toString() {
    return 'LanguageCourseRouteArgs{key: $key, language: $language}';
  }
}

/// generated route for
/// [_i16.ListeningLearningPage]
class ListeningLearningRoute
    extends _i29.PageRouteInfo<ListeningLearningRouteArgs> {
  ListeningLearningRoute({
    _i30.Key? key,
    required _i31.LearningLanguage language,
    required _i31.LanguageCourseLearningContent languageCourseLearningContent,
    required _i31.LanguageCourse languageCourse,
    List<_i29.PageRouteInfo>? children,
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

  static const _i29.PageInfo<ListeningLearningRouteArgs> page =
      _i29.PageInfo<ListeningLearningRouteArgs>(name);
}

class ListeningLearningRouteArgs {
  const ListeningLearningRouteArgs({
    this.key,
    required this.language,
    required this.languageCourseLearningContent,
    required this.languageCourse,
  });

  final _i30.Key? key;

  final _i31.LearningLanguage language;

  final _i31.LanguageCourseLearningContent languageCourseLearningContent;

  final _i31.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'ListeningLearningRouteArgs{key: $key, language: $language, languageCourseLearningContent: $languageCourseLearningContent, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i17.LoginPage]
class LoginRoute extends _i29.PageRouteInfo<void> {
  const LoginRoute({List<_i29.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i18.MainPage]
class MainRoute extends _i29.PageRouteInfo<void> {
  const MainRoute({List<_i29.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i19.MatchingLearningPage]
class MatchingLearningRoute
    extends _i29.PageRouteInfo<MatchingLearningRouteArgs> {
  MatchingLearningRoute({
    _i30.Key? key,
    required _i31.LearningLanguage learningLanguage,
    required List<_i31.LanguageCourseLearningContent>
        languageCourseLearningContents,
    _i31.LearningType? learningType,
    required _i31.LanguageCourse languageCourse,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          MatchingLearningRoute.name,
          args: MatchingLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContents: languageCourseLearningContents,
            learningType: learningType,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchingLearningRoute';

  static const _i29.PageInfo<MatchingLearningRouteArgs> page =
      _i29.PageInfo<MatchingLearningRouteArgs>(name);
}

class MatchingLearningRouteArgs {
  const MatchingLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContents,
    this.learningType,
    required this.languageCourse,
  });

  final _i30.Key? key;

  final _i31.LearningLanguage learningLanguage;

  final List<_i31.LanguageCourseLearningContent> languageCourseLearningContents;

  final _i31.LearningType? learningType;

  final _i31.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'MatchingLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContents: $languageCourseLearningContents, learningType: $learningType, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i20.OnBoardingPage]
class OnBoardingRoute extends _i29.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i29.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i21.PrivateChatPage]
class PrivateChatRoute extends _i29.PageRouteInfo<PrivateChatRouteArgs> {
  PrivateChatRoute({
    _i30.Key? key,
    required _i31.ChatSession chatSession,
    required _i31.User receiver,
    List<_i29.PageRouteInfo>? children,
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

  static const _i29.PageInfo<PrivateChatRouteArgs> page =
      _i29.PageInfo<PrivateChatRouteArgs>(name);
}

class PrivateChatRouteArgs {
  const PrivateChatRouteArgs({
    this.key,
    required this.chatSession,
    required this.receiver,
  });

  final _i30.Key? key;

  final _i31.ChatSession chatSession;

  final _i31.User receiver;

  @override
  String toString() {
    return 'PrivateChatRouteArgs{key: $key, chatSession: $chatSession, receiver: $receiver}';
  }
}

/// generated route for
/// [_i22.ProfilePage]
class ProfileRoute extends _i29.PageRouteInfo<void> {
  const ProfileRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileTabPage]
class ProfileTabRoute extends _i29.PageRouteInfo<void> {
  const ProfileTabRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i23.PronunciationLearningPage]
class PronunciationLearningRoute
    extends _i29.PageRouteInfo<PronunciationLearningRouteArgs> {
  PronunciationLearningRoute({
    _i30.Key? key,
    required _i31.LearningLanguage learningLanguage,
    required List<_i31.LanguageCourseLearningContent>
        languageCourseLearningContent,
    required _i31.LanguageCourse languageCourse,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          PronunciationLearningRoute.name,
          args: PronunciationLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'PronunciationLearningRoute';

  static const _i29.PageInfo<PronunciationLearningRouteArgs> page =
      _i29.PageInfo<PronunciationLearningRouteArgs>(name);
}

class PronunciationLearningRouteArgs {
  const PronunciationLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
    required this.languageCourse,
  });

  final _i30.Key? key;

  final _i31.LearningLanguage learningLanguage;

  final List<_i31.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i31.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'PronunciationLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i24.QuizLearningPage]
class QuizLearningRoute extends _i29.PageRouteInfo<QuizLearningRouteArgs> {
  QuizLearningRoute({
    _i30.Key? key,
    required _i31.LearningLanguage learningLanguage,
    required List<_i31.LanguageCourseLearningContent>
        languageCourseLearningContent,
    required _i31.LanguageCourse languageCourse,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          QuizLearningRoute.name,
          args: QuizLearningRouteArgs(
            key: key,
            learningLanguage: learningLanguage,
            languageCourseLearningContent: languageCourseLearningContent,
            languageCourse: languageCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizLearningRoute';

  static const _i29.PageInfo<QuizLearningRouteArgs> page =
      _i29.PageInfo<QuizLearningRouteArgs>(name);
}

class QuizLearningRouteArgs {
  const QuizLearningRouteArgs({
    this.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
    required this.languageCourse,
  });

  final _i30.Key? key;

  final _i31.LearningLanguage learningLanguage;

  final List<_i31.LanguageCourseLearningContent> languageCourseLearningContent;

  final _i31.LanguageCourse languageCourse;

  @override
  String toString() {
    return 'QuizLearningRouteArgs{key: $key, learningLanguage: $learningLanguage, languageCourseLearningContent: $languageCourseLearningContent, languageCourse: $languageCourse}';
  }
}

/// generated route for
/// [_i25.SplashPage]
class SplashRoute extends _i29.PageRouteInfo<void> {
  const SplashRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SubscriptionPage]
class SubscriptionRoute extends _i29.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ValidateEmailPage]
class ValidateEmailRoute extends _i29.PageRouteInfo<void> {
  const ValidateEmailRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ValidateEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidateEmailRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ValidatePhoneNumberPage]
class ValidatePhoneNumberRoute extends _i29.PageRouteInfo<void> {
  const ValidatePhoneNumberRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ValidatePhoneNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidatePhoneNumberRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}
