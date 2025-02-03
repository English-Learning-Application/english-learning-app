part of 'home.dart';

@freezed
class HomeViewModelData extends BaseViewModelData with _$HomeViewModelData {
  const factory HomeViewModelData({
    @Default([]) List<ChatSession> chatSessions,
  }) = _HomeViewModelData;
}
