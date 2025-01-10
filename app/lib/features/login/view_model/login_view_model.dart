part of 'login.dart';

@Injectable()
class LoginViewModel extends BaseViewModel<LoginViewModelData> {
  final UsernameRegistrationUseCase _usernameRegistrationUseCase;
  final LoginUserUseCase _loginUserUseCase;
  final GoogleLoginUseCase _googleLoginUseCase;
  final FacebookLoginUseCase _facebookLoginUseCase;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FacebookAuth _facebookAuth = FacebookAuth.instance;
  LoginViewModel(
    this._usernameRegistrationUseCase,
    this._loginUserUseCase,
    this._googleLoginUseCase,
    this._facebookLoginUseCase,
  ) : super(const LoginViewModelData());

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

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    await runViewModelCatching(
      action: () async {
        final input = LoginUserInput(
          email: email,
          password: password,
        );
        await _loginUserUseCase.execute(input);
        await appViewModel.appRefreshUser(true);
      },
    );
  }

  Future<void> registerUser({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    await runViewModelCatching(
      action: () async {
        if (password != confirmPassword) {
          throw const ValidationException(
            ValidationExceptionKind.invalidConfirmationPassword,
          );
        }
        final input = UsernameRegistrationInput(
          username: username,
          email: email,
          password: password,
        );
        await _usernameRegistrationUseCase.execute(input);
        await appViewModel.appRefreshUser(true);
      },
    );
  }

  Future<void> googleSignIn() async {
    await runViewModelCatching(
      action: () async {
        final googleLogin = await _googleSignIn.signIn();
        if (googleLogin == null) {
          throw const ServiceException(kind: ServiceExceptionKind.googleSignIn);
        } else {
          final googleAuth = await googleLogin.authentication;
          final input = GoogleLoginInput(
            idToken: googleAuth.idToken ?? '',
          );

          await _googleSignIn.signOut();
          await _googleLoginUseCase.execute(input);
          await appViewModel.appRefreshUser(true);
        }
      },
    );
  }

  Future<void> facebookSignIn() async {
    await runViewModelCatching(
      action: () async {
        final result = await _facebookAuth.login();
        if (result.status == LoginStatus.success) {
          final input = FacebookLoginInput(
            accessToken: result.accessToken!.tokenString,
          );
          await _facebookAuth.logOut();
          await _facebookLoginUseCase.execute(input);
          await appViewModel.appRefreshUser(true);
        } else {
          throw const ServiceException(
              kind: ServiceExceptionKind.facebookSignIn);
        }
      },
    );
  }
}
