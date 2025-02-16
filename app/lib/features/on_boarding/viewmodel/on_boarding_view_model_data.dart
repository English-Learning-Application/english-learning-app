part of 'on_boarding.dart';

@freezed
class OnboardingViewModelData extends BaseViewModelData
    with _$OnboardingViewModelData {
  const OnboardingViewModelData._();
  const factory OnboardingViewModelData({
    @Default(0) int currentIndex,
  }) = _OnboardingViewModelData;
}
