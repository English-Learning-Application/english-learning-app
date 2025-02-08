import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

part 'reset_password_request_use_case.freezed.dart';

@Injectable()
class ResetPasswordRequestUseCase extends BaseFutureUseCase<
    ResetPasswordRequestInput, ResetPasswordRequestOutput> {
  final AuthenticationRepository _authenticationRepository;

  const ResetPasswordRequestUseCase(this._authenticationRepository);

  @override
  Future<ResetPasswordRequestOutput> buildUseCase(
    ResetPasswordRequestInput input,
  ) async {
    if (ValidationUtils.isValidEmail(input.emailOrPhoneNumber)) {
      await _authenticationRepository.resetPassword(
        email: input.emailOrPhoneNumber,
      );
      return const ResetPasswordRequestOutput();
    } else if (ValidationUtils.isValidVietnamesePhoneNumber(
      input.emailOrPhoneNumber,
    )) {
      await _authenticationRepository.resetPassword(
        phoneNumber: "+84${input.emailOrPhoneNumber}",
      );
      return const ResetPasswordRequestOutput();
    } else {
      throw const ValidationException(
        ValidationExceptionKind.invalidEmailOrPhoneNumber,
      );
    }
  }
}

@freezed
class ResetPasswordRequestInput extends BaseInput
    with _$ResetPasswordRequestInput {
  const factory ResetPasswordRequestInput({
    required String emailOrPhoneNumber,
  }) = _ResetPasswordRequestInput;
}

@freezed
class ResetPasswordRequestOutput extends BaseOutput
    with _$ResetPasswordRequestOutput {
  const factory ResetPasswordRequestOutput() = _ResetPasswordRequestOutput;
}
