import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'update_user_password_use_case.freezed.dart';

@Injectable()
class UpdateUserPasswordUseCase extends BaseFutureUseCase<
    UpdateUserPasswordInput, UpdateUserPasswordOutput> {
  final ProfileRepository _profileRepository;

  const UpdateUserPasswordUseCase(this._profileRepository);

  @override
  Future<UpdateUserPasswordOutput> buildUseCase(
      UpdateUserPasswordInput input) async {
    final success = await _profileRepository.updatePassword(
      oldPassword: input.oldPassword,
      newPassword: input.newPassword,
    );

    return UpdateUserPasswordOutput(success: success);
  }
}

@freezed
class UpdateUserPasswordInput extends BaseInput with _$UpdateUserPasswordInput {
  const factory UpdateUserPasswordInput({
    required String oldPassword,
    required String newPassword,
  }) = _UpdateUserPasswordInput;
}

@freezed
class UpdateUserPasswordOutput extends BaseOutput
    with _$UpdateUserPasswordOutput {
  const factory UpdateUserPasswordOutput({
    required bool success,
  }) = _UpdateUserPasswordOutput;
}
