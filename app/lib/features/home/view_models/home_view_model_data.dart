part of 'home.dart';

@freezed
class HomeViewModelData extends BaseViewModelData with _$HomeViewModelData {
  const factory HomeViewModelData({
    @Default([]) List<ChatSession> chatSessions,
    @Default([]) List<LanguageCourse> languageCourses,
    @Default([]) List<CategoryCourse> categoryCourses,
  }) = _HomeViewModelData;
}
