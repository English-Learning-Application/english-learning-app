part of 'splash.dart';

@Injectable()
class SplashViewModel extends BaseViewModel<SplashViewModelData> {
  final GetInitialAppDataUseCase _getInitialAppDataUseCase;
  final GetLoggedInUserUseCase _getLoggedInUserUseCase;
  final GetCurrentPrefUserUseCase _getCurrentPrefUserUseCase;

  SplashViewModel(
    this._getInitialAppDataUseCase,
    this._getLoggedInUserUseCase,
    this._getCurrentPrefUserUseCase,
  ) : super(const SplashViewModelData());

  onSplashInitial() async {
    await runViewModelCatching(
      action: () async {
        final getInitialAppDataOutput = _getInitialAppDataUseCase.execute(
          const GetInitialAppDataInput(),
        );
        if (getInitialAppDataOutput.isLoggedIn) {
          await _getLoggedInUserUseCase.execute(const GetLoggedInUserInput());
        }
        final currentUserResp = _getCurrentPrefUserUseCase.execute(
          const GetCurrentPrefUserInput(),
        );

        appViewModel.appInitiated(
          isLoggedIn: getInitialAppDataOutput.isLoggedIn,
          languageCode: getInitialAppDataOutput.languageCode,
          appTheme: getInitialAppDataOutput.appTheme,
          currentUser: currentUserResp.user,
        );

        switch (getInitialAppDataOutput.initialAppRoute) {
          case InitialAppRoute.login:
            navigator.replaceAll(
              [
                const AppRouteInfo.login(),
              ],
            );
            break;
          case InitialAppRoute.home:
            navigator.replaceAll(
              [
                const AppRouteInfo.home(),
              ],
            );
            break;
        }
      },
      doOnError: (e) async {
        navigator.replaceAll(
          [
            const AppRouteInfo.login(),
          ],
        );
      },
      handleLoading: false,
    );
  }
}
