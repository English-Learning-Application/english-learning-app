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
      flashCardLearning: (languageCourseLearningContent, learningLanguage) =>
          FlashCardLearningRoute(
        languageCourseLearningContent: languageCourseLearningContent,
        learningLanguage: learningLanguage,
      ),
      quizLearning: (learningLanguage, languageCourseLearningContent) =>
          QuizLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
      ),
      matchingLearning: (learningLanguage, languageCourseLearningContent) =>
          MatchingLearningRoute(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
      ),
    );
  }
}
