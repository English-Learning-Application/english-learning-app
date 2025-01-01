import 'package:localization/localization.dart';
import 'package:services/services.dart';

class ExceptionMessageMapper {
  const ExceptionMessageMapper();

  String map(AppException appException) {
    return switch (appException.appExceptionType) {
      AppExceptionType.remote => switch (
            (appException as RemoteException).kind) {
          RemoteExceptionKind.badCertificate =>
            S.current.unknownException('UE-01'),
          RemoteExceptionKind.noInternet => S.current.noInternetException,
          RemoteExceptionKind.network => S.current.noInternetException,
          RemoteExceptionKind.timeout => S.current.timeoutException,
          RemoteExceptionKind.serverDefined =>
            appException.generalServerMessage ??
                S.current.unknownException('UE-02'),
          RemoteExceptionKind.serverUndefined =>
            appException.generalServerMessage ??
                S.current.unknownException('UE-03'),
          RemoteExceptionKind.cancellation =>
            S.current.unknownException('UE-04'),
          RemoteExceptionKind.unknown => S.current.unknownException('UE-05'),
          RemoteExceptionKind.refreshTokenFailed => S.current.tokenExpired,
          RemoteExceptionKind.decodeError =>
            S.current.unknownException('UE-06'),
        },
      AppExceptionType.parse => S.current.unknownException('UE-10'),
      AppExceptionType.uncaught => S.current.unknownException('UE-00'),
      AppExceptionType.remoteConfig => S.current.unknownException('UE-100'),
      AppExceptionType.validation => switch (
            (appException as ValidationException).kind) {
          ValidationExceptionKind.invalidUsername => S.current.invalidUserName,
          ValidationExceptionKind.invalidDateTime => S.current.invalidDateTime,
          ValidationExceptionKind.invalidConfirmationPassword =>
            S.current.invalidConfirmationPassword,
        },
      AppExceptionType.cancel => S.current.cancellationException,
      AppExceptionType.service => switch (
            (appException as ServiceException).kind) {
          ServiceExceptionKind.inAppPurchase => S.current.cancellationException,
          ServiceExceptionKind.googleSignIn => S.current.cancellationException,
          ServiceExceptionKind.facebookSignIn =>
            S.current.cancellationException,
        },
    };
  }
}
