part of 'login.dart';

@Injectable()
class LoginViewModel extends BaseViewModel<LoginViewModelData> {
  LoginViewModel() : super(const LoginViewModelData());

  void setLoginMode(LoginMode loginMode) {
    viewModelData = viewModelData.copyWith(
      loginMode: loginMode,
    );
    notifyListeners();
  }

  void setIsShowPassword(bool isShowPassword) {
    viewModelData = viewModelData.copyWith(
      isShowPassword: isShowPassword,
    );
    notifyListeners();
  }
}
