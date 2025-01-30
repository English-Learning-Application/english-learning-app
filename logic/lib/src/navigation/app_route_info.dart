import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'app_route_info.freezed.dart';

@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.login() = _Login;
  const factory AppRouteInfo.main() = _Main;
  const factory AppRouteInfo.splash() = _Splash;
  const factory AppRouteInfo.onBoarding() = _OnBoarding;
  const factory AppRouteInfo.completeRegistration() = _CompleteRegistration;
  const factory AppRouteInfo.languageCourse({
    required LearningLanguage learningLanguage,
  }) = _LanguageCourse;
  const factory AppRouteInfo.languageCourseDetails({
    required LanguageCourse languageCourse,
  }) = _LanguageCourseDetails;
  const factory AppRouteInfo.flashCardLearning({
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required LearningLanguage learningLanguage,
  }) = _FlashCardLearning;
  const factory AppRouteInfo.quizLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContents,
  }) = _QuizLearning;
  const factory AppRouteInfo.matchingLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    LearningType? learningType,
  }) = _MatchingLearning;
  const factory AppRouteInfo.pronunciationLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
  }) = _PronunciationLearning;
  const factory AppRouteInfo.listeningLearning({
    required LearningLanguage learningLanguage,
    required LanguageCourseLearningContent languageCourseLearningContent,
  }) = _ListeningLearning;
  const factory AppRouteInfo.validateEmail() = _ValidateEmail;
  const factory AppRouteInfo.validatePhoneNumber() = _ValidatePhoneNumber;
  const factory AppRouteInfo.editProfile() = _EditProfile;
}
