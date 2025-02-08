import 'package:localization/localization.dart';
import 'package:services/services.dart';

class ExceptionMessageMapper {
  const ExceptionMessageMapper();

  String map(AppException appException) {
    return switch (appException.appExceptionType) {
      AppExceptionType.remote =>
        (appException as RemoteException).serverError?.generalMessage ??
            S.current.unauthorizedException,
      AppExceptionType.parse => S.current.unknownException('UE-10'),
      AppExceptionType.uncaught => S.current.unknownException('UE-00'),
      AppExceptionType.remoteConfig => S.current.unknownException('UE-100'),
      AppExceptionType.validation => switch (
            (appException as ValidationException).kind) {
          ValidationExceptionKind.invalidUsername => S.current.invalidUserName,
          ValidationExceptionKind.invalidDateTime => S.current.invalidDateTime,
          ValidationExceptionKind.invalidConfirmationPassword =>
            S.current.invalidConfirmationPassword,
          ValidationExceptionKind.invalidOldPassword =>
            S.current.invalidOldPassword,
          ValidationExceptionKind.invalidEmailOrPhoneNumber =>
            S.current.invalidEmailOrPhone,
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
