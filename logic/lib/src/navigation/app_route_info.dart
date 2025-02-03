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
    required LanguageCourse languageCourse,
  }) = _FlashCardLearning;
  const factory AppRouteInfo.quizLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContents,
    required LanguageCourse languageCourse,
  }) = _QuizLearning;
  const factory AppRouteInfo.matchingLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required LanguageCourse languageCourse,
    LearningType? learningType,
  }) = _MatchingLearning;
  const factory AppRouteInfo.pronunciationLearning({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required LanguageCourse languageCourse,
  }) = _PronunciationLearning;
  const factory AppRouteInfo.listeningLearning({
    required LearningLanguage learningLanguage,
    required LanguageCourseLearningContent languageCourseLearningContent,
    required LanguageCourse languageCourse,
  }) = _ListeningLearning;
  const factory AppRouteInfo.validateEmail() = _ValidateEmail;
  const factory AppRouteInfo.validatePhoneNumber() = _ValidatePhoneNumber;
  const factory AppRouteInfo.editProfile() = _EditProfile;
  const factory AppRouteInfo.subscription() = _Subscription;
  const factory AppRouteInfo.commonFeatureRequiredSubscription() =
      _CommonFeatureRequiredSubscription;
  const factory AppRouteInfo.aiChatBotDetails({
    required ChatSession chatSession,
  }) = _AiChatBotDetails;
  const factory AppRouteInfo.community() = _Community;
  const factory AppRouteInfo.communityTopic({
    required ChatTopic chatTopic,
  }) = _CommunityTopic;
  const factory AppRouteInfo.groupChat({
    required ChatSession chatSession,
  }) = _GroupChat;
  const factory AppRouteInfo.privateChat({
    required ChatSession chatSession,
    required User receiver,
  }) = _PrivateChat;
}
