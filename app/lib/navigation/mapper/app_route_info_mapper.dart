import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../app.dart';

@LazySingleton(as: BaseRouteInfoMapper)
class AppRouteInfoMapper extends BaseRouteInfoMapper {
  @override
  PageRouteInfo map(AppRouteInfo appRouteInfo) {
    return appRouteInfo.when(
      login: () => const LoginRoute(),
      main: () => const MainRoute(),
      splash: () => const SplashRoute(),
      onBoarding: () => const OnBoardingRoute(),
      completeRegistration: () => const CompleteRegistrationRoute(),
      languageCourse: (learningLanguage) =>
          LanguageCourseRoute(language: learningLanguage),
      languageCourseDetails: (languageCourse) =>
          LanguageCourseDetailsRoute(languageCourse: languageCourse),
      flashCardLearning:
          (languageCourseLearningContents, learningLanguage, courseId) =>
              FlashCardLearningRoute(
        courseId: courseId,
        languageCourseLearningContent: languageCourseLearningContents,
        learningLanguage: learningLanguage,
      ),
      quizLearning:
          (learningLanguage, languageCourseLearningContents, courseId) =>
              QuizLearningRoute(
        courseId: courseId,
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContents,
      ),
      matchingLearning: (
        learningLanguage,
        languageCourseLearningContents,
        courseId,
        learningType,
      ) =>
          MatchingLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContents: languageCourseLearningContents,
        learningType: learningType,
        courseId: courseId,
      ),
      pronunciationLearning: (
        learningLanguage,
        languageCourseLearningContent,
        courseId,
      ) =>
          PronunciationLearningRoute(
        courseId: courseId,
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
      ),
      listeningLearning: (
        learningLanguage,
        languageCourseLearningContent,
        languageCourse,
      ) =>
          ListeningLearningRoute(
        languageCourse: languageCourse,
        language: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
      ),
      validateEmail: () => const ValidateEmailRoute(),
      validatePhoneNumber: () => const ValidatePhoneNumberRoute(),
      editProfile: () => EditProfileRoute(),
      subscription: () => const SubscriptionRoute(),
      commonFeatureRequiredSubscription: () =>
          const CommonFeatureRequiredSubscriptionRoute(),
      aiChatBotDetails: (chatSession) => AiChatBotDetailsRoute(
        chatSession: chatSession,
      ),
      community: () => const CommunityFlowRoute(),
      communityTopic: (chatTopic) => CommunityTopicRoute(chatTopic: chatTopic),
      groupChat: (chatSession) => GroupChatRoute(chatSession: chatSession),
      privateChat: (chatSession, receiver) => PrivateChatRoute(
        chatSession: chatSession,
        receiver: receiver,
      ),
      categoryCourseDetails: (language, category, categoryCourses) =>
          CategoryCourseDetailsRoute(
        language: language,
        category: category,
        categoryCourses: categoryCourses,
      ),
      categoryCourseLesson: (categoryCourse, languageCourseLearningContents) =>
          CategoryCourseLessonRoute(
        categoryCourse: categoryCourse,
        languageCourseLearningContent: languageCourseLearningContents,
      ),
      todoDetails: (todo) => TodoDetailsRoute(todo: todo),
      achievement: () => const AchievementTrackerRoute(),
    );
  }
}
