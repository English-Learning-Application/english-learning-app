import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

class ExceptionHandler {
  final AppNavigator appNavigator;
  final ExceptionHandlerListener listener;

  const ExceptionHandler({
    required this.appNavigator,
    required this.listener,
  });

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper,
    String commonExceptionMessage,
  ) async {
    final message =
        appExceptionWrapper.overrideMessage ?? commonExceptionMessage;

    switch (appExceptionWrapper.appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appExceptionWrapper.appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.refreshTokenFailed:
            listener.onRefreshTokenFailed();
            break;
          case RemoteExceptionKind.noInternet:
          case RemoteExceptionKind.timeout:
            await _showErrorDialogWithRetry(
              message: message,
              onRetryPressed: Func0(
                () async {
                  await appNavigator.pop();
                  await appExceptionWrapper.doOnRetry?.call();
                },
              ),
            );
            break;
          default:
            await _showErrorDialog(message: message);
            break;
        }
        break;

      case AppExceptionType.parse:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.remoteConfig:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.validation:
      case AppExceptionType.service:
        await _showErrorDialog(message: message);
        break;
      case AppExceptionType.uncaught:
      case AppExceptionType.cancel:
        break;
    }
  }

  void _showErrorSnackBar({
    required String message,
    Duration duration = DurationConstants.defaultSnackBarDuration,
  }) async {
    appNavigator.showErrorSnackBar(message.localized, duration: duration);
  }

  Future<void> _showErrorDialog({
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    await appNavigator
        .showDialog(
          AppPopupInfo.confirmDialog(
            onPressed: onPressed,
            message: message.localized,
          ),
        )
        .then(
          (value) =>
              isRefreshTokenFailed ? listener.onRefreshTokenFailed() : null,
        );
  }

  Future<void> _showErrorDialogWithRetry({
    required String message,
    required Func0<void>? onRetryPressed,
  }) async {
    await appNavigator.showDialog(
      AppPopupInfo.errorWithRetryDialog(
        message: message.localized,
        onPressed: onRetryPressed,
      ),
    );
  }

  Future<void> _showMessageDialog({
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    await appNavigator
        .showDialog(
          AppPopupInfo.messageDialog(
            onPressed: onPressed,
            message: message.localized,
          ),
        )
        .then(
          (value) =>
              isRefreshTokenFailed ? listener.onRefreshTokenFailed() : null,
        );
  }
}

abstract class ExceptionHandlerListener {
  void onRefreshTokenFailed();
}
