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
      flashCardLearning: (languageCourseLearningContents, learningLanguage) =>
          FlashCardLearningRoute(
        languageCourseLearningContent: languageCourseLearningContents,
        learningLanguage: learningLanguage,
      ),
      quizLearning: (learningLanguage, languageCourseLearningContents) =>
          QuizLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContents,
      ),
      matchingLearning:
          (learningLanguage, languageCourseLearningContents, learningType) =>
              MatchingLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContents: languageCourseLearningContents,
        learningType: learningType,
      ),
      pronunciationLearning:
          (learningLanguage, languageCourseLearningContent) =>
              PronunciationLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
      ),
      listeningLearning: (learningLanguage, languageCourseLearningContent) =>
          ListeningLearningRoute(
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
    );
  }
}
