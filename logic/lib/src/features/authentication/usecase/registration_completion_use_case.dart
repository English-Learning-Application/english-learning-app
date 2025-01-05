import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'registration_completion_use_case.freezed.dart';

@Injectable()
class RegistrationCompletionUseCase extends BaseFutureUseCase<
    RegistrationCompletionInput, RegistrationCompletionOutput> {
  final AuthenticationRepository _authenticationRepository;

  const RegistrationCompletionUseCase(this._authenticationRepository);

  @override
  Future<RegistrationCompletionOutput> buildUseCase(
      RegistrationCompletionInput input) async {
    await _authenticationRepository.completeRegistration(
      learningLanguage: input.learningLanguage,
      nativeLanguage: input.nativeLanguage,
      learningModes: input.learningModes,
    );
    return const RegistrationCompletionOutput();
  }
}

@freezed
class RegistrationCompletionInput extends BaseInput
    with _$RegistrationCompletionInput {
  const RegistrationCompletionInput._();
  const factory RegistrationCompletionInput({
    required LearningLanguage learningLanguage,
    required LearningLanguage nativeLanguage,
    required List<LearningType> learningModes,
  }) = _RegistrationCompletionInput;
}

@freezed
class RegistrationCompletionOutput extends BaseOutput
    with _$RegistrationCompletionOutput {
  const RegistrationCompletionOutput._();
  const factory RegistrationCompletionOutput() = _RegistrationCompletionOutput;
}
