import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../app.dart';

abstract class BaseViewModel<D extends BaseViewModelData>
    extends BaseViewModelDelegate<D> {
  BaseViewModel(super.data);
}

abstract class BaseViewModelDelegate<D extends BaseViewModelData>
    with LogMixin, ChangeNotifier {
  BaseViewModelDelegate(
    D data,
  ) : viewModelData = data;

  late final CommonViewModel _commonViewModel;
  late final AppNavigator navigator;
  late final ExceptionHandler exceptionHandler;
  late final ExceptionMessageMapper exceptionMessageMapper;
  late final DisposeBag disposeBag;
  late final AppViewModel appViewModel;
  D viewModelData;

  set commonViewModel(CommonViewModel commonBloc) {
    _commonViewModel = commonBloc;
  }

  CommonViewModel get commonViewModel =>
      this is CommonViewModel ? this as CommonViewModel : _commonViewModel;

  Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
    commonViewModel.onExceptionEmitted(appExceptionWrapper);

    return appExceptionWrapper.exceptionCompleter?.future;
  }

  void updateData(D data) {
    viewModelData = data;
    notifyListeners();
  }

  void showLoading() {
    commonViewModel.emitLoadingVisibility(true);
  }

  void hideLoading() {
    commonViewModel.emitLoadingVisibility(false);
  }

  Future<void> runViewModelCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnRetries,
    Future<void> Function(AppException)? doOnError,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnCompleted,
    bool handleLoading = true,
    bool handleError = true,
    bool handleRetry = true,
    bool Function(AppException)? forceHandleError,
    String? overrideErrorMessage,
    int? maxRetries,
  }) async {
    assert(maxRetries == null || maxRetries > 0, 'maxRetries must be > 0');
    Completer<void>? recursion;
    try {
      if (handleLoading) showLoading();

      await action.call();

      if (handleLoading) {
        hideLoading();
      }

      await doOnSuccessOrError?.call();
    } on AppException catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError || (forceHandleError?.call(e) ?? _forceHandleError(e))) {
        await addException(
          AppExceptionWrapper(
            appException: e,
            doOnRetry: doOnRetries ??
                (handleRetry && maxRetries != 1
                    ? () async {
                        recursion = Completer();
                        await runViewModelCatching(
                          action: action,
                          doOnCompleted: doOnCompleted,
                          doOnError: doOnError,
                          doOnSubscribe: doOnSubscribe,
                          doOnSuccessOrError: doOnSuccessOrError,
                          doOnRetries: doOnRetries,
                          forceHandleError: forceHandleError,
                          handleError: handleError,
                          handleLoading: handleLoading,
                          handleRetry: handleRetry,
                          overrideErrorMessage: overrideErrorMessage,
                          maxRetries: maxRetries?.minus(1),
                        );
                        recursion?.complete();
                      }
                    : null),
            exceptionCompleter: Completer<void>(),
            overrideMessage: overrideErrorMessage,
          ),
        );
      }
    } finally {
      await recursion?.future;
      await doOnCompleted?.call();
    }
  }

  bool _forceHandleError(AppException appException) {
    return appException is RemoteException &&
        appException.kind == RemoteExceptionKind.refreshTokenFailed;
  }
}
