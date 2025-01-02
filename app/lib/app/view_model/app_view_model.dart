part of 'app.dart';

@LazySingleton()
class AppViewModel extends BaseViewModel<AppViewModelData> {
  final SaveLanguageCodeUseCase _saveLanguageCodeUseCase;
  final SaveThemeModeUseCase _saveThemeModeUseCase;
  final GetLoggedInUserUseCase _getLoggedInUserUseCase;
  final GetCurrentPrefUserUseCase _getCurrentPrefUserUseCase;
  final RemotePushNotificationService _remotePushNotificationService;

  AppViewModel(
    this._saveLanguageCodeUseCase,
    this._saveThemeModeUseCase,
    this._getLoggedInUserUseCase,
    this._getCurrentPrefUserUseCase,
    this._remotePushNotificationService,
  ) : super(const AppViewModelData());

  FutureOr<void> appLanguageChanged(
    LanguageCode languageCode,
  ) async {
    await runViewModelCatching(
      action: () async {
        final output = await _saveLanguageCodeUseCase.execute(
          SaveLanguageCodeInput(
            languageCode: languageCode,
          ),
        );
        if (output.isSuccess) {
          viewModelData = viewModelData.copyWith(
            languageCode: languageCode,
          );
          notifyListeners();
        }
      },
    );
  }

  FutureOr<void> appThemeChanged(
    AppThemeType appTheme,
  ) async {
    await runViewModelCatching(
      action: () async {
        final output = await _saveThemeModeUseCase.execute(
          SaveThemeModeInput(
            appTheme: appTheme,
          ),
        );
        if (output.isSuccess) {
          _updateThemeSetting(appTheme);
          viewModelData = viewModelData.copyWith(
            appTheme: appTheme,
          );
          notifyListeners();
        }
      },
    );
  }

  void _updateThemeSetting(AppThemeType appTheme) {
    AppThemeSetting.currentAppThemeType = appTheme;
  }

  FutureOr<void> appInitiated({
    required AppThemeType appTheme,
    required bool isLoggedIn,
    required LanguageCode languageCode,
    required User currentUser,
  }) async {
    await runViewModelCatching(
      action: () async {
        _updateThemeSetting(appTheme);
        viewModelData = viewModelData.copyWith(
          isLoggedIn: isLoggedIn,
          languageCode: languageCode,
          appTheme: appTheme,
          currentUser: currentUser,
        );
        notifyListeners();
      },
    );
  }

  FutureOr<void> appAuthenticated() async {
    await runViewModelCatching(
      action: () async {
        final currentUserResp = _getCurrentPrefUserUseCase.execute(
          const GetCurrentPrefUserInput(),
        );
        viewModelData = viewModelData.copyWith(
          isLoggedIn: true,
          currentUser: currentUserResp.user,
        );
      },
    );
  }

  FutureOr<void> appRefreshUser(
    bool goToHome,
  ) async {
    await runViewModelCatching(
      action: () async {
        await _getLoggedInUserUseCase.execute(const GetLoggedInUserInput());
        final currentUserResp = _getCurrentPrefUserUseCase.execute(
          const GetCurrentPrefUserInput(),
        );
        viewModelData = viewModelData.copyWith(
          currentUser: currentUserResp.user,
        );
        if (goToHome) {
          await navigator.replaceAll(
            [
              const AppRouteInfo.main(),
            ],
          );
        }
      },
    );
  }

  FutureOr<void> appLoggedOut() async {
    await runViewModelCatching(
      action: () async {
        viewModelData = viewModelData.copyWith(
          isLoggedIn: false,
          currentUser: User.empty,
        );
      },
    );
  }
}
