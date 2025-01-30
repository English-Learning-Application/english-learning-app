import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'verify_email_otp_use_case.freezed.dart';

@Injectable()
class VerifyEmailOtpUseCase
    extends BaseFutureUseCase<VerifyEmailOtpInput, VerifyEmailOtpOutput> {
  final ProfileRepository _profileRepository;

  const VerifyEmailOtpUseCase(this._profileRepository);

  @override
  Future<VerifyEmailOtpOutput> buildUseCase(VerifyEmailOtpInput input) async {
    await _profileRepository.verifyEmail(input.otp);
    return const VerifyEmailOtpOutput();
  }
}

@freezed
class VerifyEmailOtpInput extends BaseInput with _$VerifyEmailOtpInput {
  const factory VerifyEmailOtpInput({
    required String otp,
  }) = _VerifyEmailOtpInput;
}

@freezed
class VerifyEmailOtpOutput extends BaseOutput with _$VerifyEmailOtpOutput {
  const factory VerifyEmailOtpOutput() = _VerifyEmailOtpOutput;
}
