import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'update_user_avatar_use_case.freezed.dart';

@Injectable()
class UpdateUserAvatarUseCase
    extends BaseFutureUseCase<UpdateUserAvatarInput, UpdateUserAvatarOutput> {
  final ProfileRepository _profileRepository;

  const UpdateUserAvatarUseCase(this._profileRepository);

  @override
  Future<UpdateUserAvatarOutput> buildUseCase(
      UpdateUserAvatarInput input) async {
    await _profileRepository.updateUserAvatar(input.filePath);
    return const UpdateUserAvatarOutput();
  }
}

@freezed
class UpdateUserAvatarInput extends BaseInput with _$UpdateUserAvatarInput {
  const factory UpdateUserAvatarInput({
    required String filePath,
  }) = _UpdateUserAvatarInput;
}

@freezed
class UpdateUserAvatarOutput extends BaseOutput with _$UpdateUserAvatarOutput {
  const factory UpdateUserAvatarOutput() = _UpdateUserAvatarOutput;
}
