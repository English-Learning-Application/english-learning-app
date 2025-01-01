import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'username_registration_use_case.freezed.dart';

@Injectable()
class UsernameRegistrationUseCase extends BaseFutureUseCase<
    UsernameRegistrationInput, UsernameRegistrationOutput> {
  final AuthenticationRepository _authenticationRepository;

  const UsernameRegistrationUseCase(this._authenticationRepository);

  @override
  Future<UsernameRegistrationOutput> buildUseCase(
      UsernameRegistrationInput input) async {
    await _authenticationRepository.registerUser(
      username: input.username,
      email: input.email,
      password: input.password,
    );

    return const UsernameRegistrationOutput();
  }
}

@freezed
class UsernameRegistrationInput extends BaseInput
    with _$UsernameRegistrationInput {
  const UsernameRegistrationInput._();
  const factory UsernameRegistrationInput({
    required String username,
    required String email,
    required String password,
  }) = _UsernameRegistrationInput;
}

@freezed
class UsernameRegistrationOutput extends BaseOutput
    with _$UsernameRegistrationOutput {
  const UsernameRegistrationOutput._();
  const factory UsernameRegistrationOutput() = _UsernameRegistrationOutput;
}
