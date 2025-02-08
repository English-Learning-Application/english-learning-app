import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

part 'reset_password_use_case.freezed.dart';

@Injectable()
class ResetPasswordUseCase
    extends BaseFutureUseCase<ResetPasswordInput, ResetPasswordOutput> {
  final AuthenticationRepository _authenticationRepository;

  const ResetPasswordUseCase(this._authenticationRepository);

  @override
  Future<ResetPasswordOutput> buildUseCase(ResetPasswordInput input) async {
    if (ValidationUtils.isValidEmail(input.emailOrPhoneNumber)) {
      await _authenticationRepository.resetPasswordConfirmation(
        code: input.code,
        newPassword: input.newPassword,
        email: input.emailOrPhoneNumber,
      );
    } else if (ValidationUtils.isValidVietnamesePhoneNumber(
      input.emailOrPhoneNumber,
    )) {
      await _authenticationRepository.resetPasswordConfirmation(
        code: input.code,
        newPassword: input.newPassword,
        phoneNumber: "+84${input.emailOrPhoneNumber}",
      );
    } else {
      throw const ValidationException(
        ValidationExceptionKind.invalidEmailOrPhoneNumber,
      );
    }

    return const ResetPasswordOutput();
  }
}

@freezed
class ResetPasswordInput extends BaseInput with _$ResetPasswordInput {
  const factory ResetPasswordInput({
    required String emailOrPhoneNumber,
    required String code,
    required String newPassword,
  }) = _ResetPasswordInput;
}

@freezed
class ResetPasswordOutput extends BaseOutput with _$ResetPasswordOutput {
  const factory ResetPasswordOutput() = _ResetPasswordOutput;
}
