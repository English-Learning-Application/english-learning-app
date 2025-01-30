import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'verify_phone_otp_use_case.freezed.dart';

@Injectable()
class VerifyPhoneOtpUseCase
    extends BaseFutureUseCase<VerifyPhoneOtpInput, VerifyPhoneOtpOutput> {
  final ProfileRepository _repository;

  const VerifyPhoneOtpUseCase(this._repository);

  @override
  Future<VerifyPhoneOtpOutput> buildUseCase(VerifyPhoneOtpInput input) async {
    await _repository.verifyPhone(input.otp);
    return const VerifyPhoneOtpOutput();
  }
}

@freezed
class VerifyPhoneOtpInput extends BaseInput with _$VerifyPhoneOtpInput {
  const factory VerifyPhoneOtpInput({
    required String otp,
  }) = _VerifyPhoneOtpInput;
}

@freezed
class VerifyPhoneOtpOutput extends BaseOutput with _$VerifyPhoneOtpOutput {
  const factory VerifyPhoneOtpOutput() = _VerifyPhoneOtpOutput;
}
