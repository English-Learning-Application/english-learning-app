import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'send_email_verification_use_case.freezed.dart';

@Injectable()
class SendEmailVerificationUseCase extends BaseFutureUseCase<
    SendEmailVerificationInput, SendEmailVerificationOutput> {
  final ProfileRepository _profileRepository;

  const SendEmailVerificationUseCase(this._profileRepository);

  @override
  Future<SendEmailVerificationOutput> buildUseCase(
      SendEmailVerificationInput input) async {
    await _profileRepository.sendEmailVerification();
    return const SendEmailVerificationOutput();
  }
}

@freezed
class SendEmailVerificationInput extends BaseInput
    with _$SendEmailVerificationInput {
  const factory SendEmailVerificationInput() = _SendEmailVerificationInput;
}

@freezed
class SendEmailVerificationOutput extends BaseOutput
    with _$SendEmailVerificationOutput {
  const factory SendEmailVerificationOutput() = _SendEmailVerificationOutput;
}
