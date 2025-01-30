import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'update_user_profile_use_case.freezed.dart';

@Injectable()
class UpdateUserProfileUseCase
    extends BaseFutureUseCase<UpdateUserProfileInput, UpdateUserProfileOutput> {
  final ProfileRepository _profileRepository;

  const UpdateUserProfileUseCase(this._profileRepository);

  @override
  Future<UpdateUserProfileOutput> buildUseCase(
      UpdateUserProfileInput input) async {
    await _profileRepository.updateUserProfile(
      username: input.username,
      learningLanguage: input.learningLanguage,
      nativeLanguage: input.nativeLanguage,
      learningModes: input.learningModes,
    );

    return const UpdateUserProfileOutput();
  }
}

@freezed
class UpdateUserProfileInput extends BaseInput with _$UpdateUserProfileInput {
  const factory UpdateUserProfileInput({
    required String username,
    required LearningLanguage learningLanguage,
    required LearningLanguage nativeLanguage,
    required List<LearningType> learningModes,
  }) = _UpdateUserProfileInput;
}

@freezed
class UpdateUserProfileOutput extends BaseOutput
    with _$UpdateUserProfileOutput {
  const factory UpdateUserProfileOutput() = _UpdateUserProfileOutput;
}
