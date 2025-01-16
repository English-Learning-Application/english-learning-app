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
    required LanguageCourseLearningContent languageCourseLearningContent,
    required LearningLanguage learningLanguage,
  }) = _FlashCardLearning;
}
