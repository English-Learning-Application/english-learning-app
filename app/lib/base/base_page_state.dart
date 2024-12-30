import 'dart:async';

import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../app.dart';

abstract class BasePageState<T extends StatefulWidget, VM extends BaseViewModel>
    extends BasePageStateDelegate<T, VM> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
        VM extends BaseViewModel> extends State<T>
    with LogMixin
    implements ExceptionHandlerListener {
  late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();
  late final AppViewModel appViewModel = GetIt.instance.get<AppViewModel>();
  late final ExceptionMessageMapper exceptionMessageMapper =
      const ExceptionMessageMapper();
  late final ExceptionHandler exceptionHandler = ExceptionHandler(
    appNavigator: navigator,
    listener: this,
  );

  late final CommonViewModel commonViewModel =
      GetIt.instance.get<CommonViewModel>()
        ..navigator = navigator
        ..exceptionHandler = exceptionHandler
        ..appViewModel = appViewModel
        ..disposeBag = disposeBag
        ..exceptionMessageMapper = exceptionMessageMapper;

  late final VM viewModel = GetIt.instance.get<VM>()
    ..navigator = navigator
    ..exceptionHandler = exceptionHandler
    ..appViewModel = appViewModel
    ..disposeBag = disposeBag
    ..exceptionMessageMapper = exceptionMessageMapper
    ..commonViewModel = commonViewModel;

  late final DisposeBag disposeBag = DisposeBag();

  String get screenName;
  bool get isAppWidget => false;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    initViewModels();
  }

  void initViewModels();

  @override
  Widget build(BuildContext context) {
    if (!isAppWidget) {
      AppColors.of(context);
      AppDimens.of(context);
    }

    return WillPopScope(
      onWillPop: () async {
        /// If [onPopInvoke] returns true, it means that the double back press logic is ignored.
        /// If [onPopInvoke] returns false, it means that the double back press logic is executed.
        final onPopInvokeResult = await onPopInvoke();
        if (!onPopInvokeResult) {
          final currentTime = DateTime.now();
          if (lastPopTime == null ||
              DateTimeUtils.secondsBetween(lastPopTime!, currentTime) > 2) {
            setState(() {
              lastPopTime = currentTime;
            });
            navigator.showErrorSnackBar(
              S.current.pressAgainToExit,
            );
            return false;
          } else {
            return canPop;
          }
        } else {
          return canPop;
        }
      },
      child: Provider<AppNavigator>(
        create: (_) => navigator,
        child: MultiProvider(
          providers: [
            ListenableProvider<VM>(
              create: (_) => viewModel,
            ),
            ListenableProvider<CommonViewModel>(
              create: (_) => commonViewModel,
            ),
          ],
          child: Selector<CommonViewModel, CommonViewModelData>(
            selector: (_, viewModel) {
              return viewModel.viewModelData;
            },
            shouldRebuild: (prev, next) {
              final prevAppExceptionWrapper = prev.appExceptionWrapper;
              final nextAppExceptionWrapper = next.appExceptionWrapper;
              return prevAppExceptionWrapper != nextAppExceptionWrapper &&
                  nextAppExceptionWrapper != null;
            },
            builder: (_, vm, __) {
              if (vm.appExceptionWrapper != null) {
                handleException(vm.appExceptionWrapper!);
              }
              return buildPageListeners(
                child: isAppWidget
                    ? buildPage(context)
                    : Stack(
                        children: [
                          buildPage(context),
                          Selector<CommonViewModel, bool>(
                            selector: (_, viewModel) {
                              return viewModel.viewModelData.isLoading;
                            },
                            shouldRebuild: (prev, next) {
                              return prev != next;
                            },
                            builder: (_, isLoading, __) {
                              return Positioned.fill(
                                child: Visibility(
                                  visible: isLoading,
                                  child: buildPageLoading(
                                    context,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading(
    BuildContext context,
  ) {
    return Container(
      color: FoundationColors.secondary900.withOpacity(0.5),
      child: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  Widget buildPage(BuildContext context);

  /// A flag to allow the user to pop back to the previous screen.
  bool canPop = true;

  /// Timestamp of the last time the back button was pressed.
  DateTime? lastPopTime;

  /// Invoked when the pop event is triggered.
  /// Returns false to goes inside double back press logic.
  /// Returns true to ignore double back press logic.
  Future<bool> onPopInvoke() async {
    return true;
  }

  String handleExceptionMessage(AppException appException) {
    return exceptionMessageMapper.map(appException);
  }

  void handleException(AppExceptionWrapper appExceptionWrapper) {
    exceptionHandler
        .handleException(
          appExceptionWrapper,
          handleExceptionMessage(
            appExceptionWrapper.appException,
          ),
        )
        .then(
          (value) => appExceptionWrapper.exceptionCompleter?.complete(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    disposeBag.dispose();
  }

  @override
  void onRefreshTokenFailed() {
    commonViewModel.onForceLogoutButtonPressed();
  }
}
