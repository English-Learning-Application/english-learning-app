part of 'main_view_model.dart';

@freezed
class MainViewModelData extends BaseViewModelData with _$MainViewModelData {
  const MainViewModelData._();
  const factory MainViewModelData({
    @Default(0) int currentIndex,
  }) = _MainViewModelData;
}