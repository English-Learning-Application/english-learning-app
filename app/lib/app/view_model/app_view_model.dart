part of 'app.dart';

@LazySingleton()
class AppViewModel extends BaseViewModel<AppViewModelData> {
  final SaveLanguageCodeUseCase _saveLanguageCodeUseCase;
  final SaveThemeModeUseCase _saveThemeModeUseCase;
  final GetLoggedInUserUseCase _getLoggedInUserUseCase;
  final GetCurrentPrefUserUseCase _getCurrentPrefUserUseCase;
  final RemotePushNotificationService _remotePushNotificationService;
  final LogoutUseCase _logoutUseCase;
  final GetAllSubscriptionUseCase _getAllSubscriptionUseCase;
  final DeleteFcmTokensUseCase _deleteFcmTokensUseCase;

  AppViewModel(
    this._saveLanguageCodeUseCase,
    this._saveThemeModeUseCase,
    this._getLoggedInUserUseCase,
    this._getCurrentPrefUserUseCase,
    this._remotePushNotificationService,
    this._logoutUseCase,
    this._getAllSubscriptionUseCase,
    this._deleteFcmTokensUseCase,
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
        updateData(
          viewModelData.copyWith(
            isLoggedIn: isLoggedIn,
            languageCode: languageCode,
            appTheme: appTheme,
            currentUser: currentUser,
          ),
        );
        if (isLoggedIn) {
          await Future.wait(
            [
              _remotePushNotificationService.registerFcmToken(),
              _getAllSubscriptionUseCase
                  .execute(const GetAllSubscriptionInput())
                  .then(
                (subscriptionOutput) {
                  final validSubscription = currentUser.getValidSubscription();
                  updateData(
                    viewModelData.copyWith(
                      subscription: validSubscription != null
                          ? subscriptionOutput.subscriptions.firstWhere(
                              (element) =>
                                  element.id ==
                                  validSubscription.subscriptionId,
                            )
                          : const Subscription(),
                    ),
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }

  FutureOr<void> appAuthenticated() async {
    await runViewModelCatching(
      action: () async {
        final currentUserResp = _getCurrentPrefUserUseCase.execute(
          const GetCurrentPrefUserInput(),
        );

        await _remotePushNotificationService.registerFcmToken();
        updateData(
          viewModelData.copyWith(
            isLoggedIn: true,
            currentUser: currentUserResp.user,
          ),
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
        final subscriptionOutput = await _getAllSubscriptionUseCase
            .execute(const GetAllSubscriptionInput());

        final validSubscription = currentUserResp.user.getValidSubscription();
        updateData(
          viewModelData.copyWith(
            currentUser: currentUserResp.user,
            subscription: validSubscription != null
                ? subscriptionOutput.subscriptions.firstWhere(
                    (element) => element.id == validSubscription.subscriptionId,
                  )
                : const Subscription(),
          ),
        );
        await _remotePushNotificationService.registerFcmToken();
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

  Future<void> logoutUser() async {
    await runViewModelCatching(
      action: () async {
        await _deleteFcmTokensUseCase.execute(const DeleteFcmTokensInput());
        await _logoutUseCase.execute(const LogoutInput());
        updateData(
          viewModelData.copyWith(
            isLoggedIn: false,
            currentUser: User.empty,
          ),
        );
      },
    );
  }
}
