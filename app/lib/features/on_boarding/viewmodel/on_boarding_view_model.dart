part of 'on_boarding.dart';

@Injectable()
class OnboardingViewModel extends BaseViewModel<OnboardingViewModelData> {

  OnboardingViewModel() : super(const OnboardingViewModelData());

  void updateCurrentIndex(int index) {
    if(index < 0 || index >= 3) {
      return;
    }
    viewModelData = viewModelData.copyWith(currentIndex: index);
    notifyListeners();
  }
}