import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'register_fcm_token_use_case.freezed.dart';

@Injectable()
class RegisterFcmTokenUseCase
    extends BaseFutureUseCase<RegisterFcmTokenInput, RegisterFcmTokenOutput> {
  final NotificationRepository _notificationRepository;
  final AppRepository _appRepository;

  const RegisterFcmTokenUseCase(
    this._notificationRepository,
    this._appRepository,
  );

  @override
  Future<RegisterFcmTokenOutput> buildUseCase(
    RegisterFcmTokenInput input,
  ) async {
    if (_appRepository.isLoggedIn) {
      await _notificationRepository.registerFcmToken(token: input.fcmToken);
    }
    return const RegisterFcmTokenOutput();
  }
}

@freezed
class RegisterFcmTokenInput extends BaseInput with _$RegisterFcmTokenInput {
  const factory RegisterFcmTokenInput({
    required String fcmToken,
  }) = _RegisterFcmTokenInput;
}

@freezed
class RegisterFcmTokenOutput extends BaseOutput with _$RegisterFcmTokenOutput {
  const factory RegisterFcmTokenOutput() = _RegisterFcmTokenOutput;
}
