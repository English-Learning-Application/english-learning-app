part of 'common.dart';

@Injectable()
class CommonViewModel extends BaseViewModel<CommonViewModelData> {
  final LogoutUseCase _logoutUseCase;
  final TrackConnectivityUseCase _trackConnectivityUseCase;
  CommonViewModel(
    this._logoutUseCase,
    this._trackConnectivityUseCase,
  ) : super(const CommonViewModelData()) {
    _trackConnectivityUseCase.execute(const TrackConnectivityInput()).listen(
      (output) {
        onConnectivityChanged(output.isConnected);
      },
    );
  }

  void emitLoadingVisibility(bool isLoading) {
    final currentVMData = viewModelData.copyWith();
    viewModelData = viewModelData.copyWith(
      isLoading: currentVMData.loadingCount == 0 && isLoading
          ? true
          : currentVMData.loadingCount == 1 && !isLoading ||
                  currentVMData.loadingCount <= 0
              ? false
              : currentVMData.isLoading,
      loadingCount: currentVMData.isLoading
          ? currentVMData.loadingCount.plus(1)
          : currentVMData.loadingCount.minus(1),
    );
    notifyListeners();
  }

  void onExceptionEmitted(AppExceptionWrapper appExceptionWrapper) {
    viewModelData = viewModelData.copyWith(
      appExceptionWrapper: appExceptionWrapper,
    );
    notifyListeners();
  }

  void onForceLogoutButtonPressed() async {
    await runViewModelCatching(
      action: () async {
        await _logoutUseCase.execute(const LogoutInput());
      },
    );
  }

  // return runBlocCatching(
  //   action: () async {
  //     await _logoutUseCase.execute(
  //       const LogoutInput(),
  //     );
  //     appBloc.add(const AppLoggedOut());
  //   },
  // );

  void onConnectivityChanged(bool isConnected) {
    viewModelData = viewModelData.copyWith(
      isConnected: isConnected,
    );
    notifyListeners();
  }
}
