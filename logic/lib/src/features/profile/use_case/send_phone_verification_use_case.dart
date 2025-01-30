import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'send_phone_verification_use_case.freezed.dart';

@Injectable()
class SendPhoneVerificationUseCase extends BaseFutureUseCase<
    SendPhoneVerificationInput, SendPhoneVerificationOutput> {
  final ProfileRepository _profileRepository;

  const SendPhoneVerificationUseCase(this._profileRepository);

  @override
  Future<SendPhoneVerificationOutput> buildUseCase(
      SendPhoneVerificationInput input) async {
    final vietnamesePhoneNumber = "+84${input.phoneNumber}";
    await _profileRepository.sendPhoneVerification(vietnamesePhoneNumber);
    return const SendPhoneVerificationOutput();
  }
}

@freezed
class SendPhoneVerificationInput extends BaseInput
    with _$SendPhoneVerificationInput {
  const factory SendPhoneVerificationInput({
    required String phoneNumber,
  }) = _SendPhoneVerificationInput;
}

@freezed
class SendPhoneVerificationOutput extends BaseOutput
    with _$SendPhoneVerificationOutput {
  const factory SendPhoneVerificationOutput() = _SendPhoneVerificationOutput;
}
