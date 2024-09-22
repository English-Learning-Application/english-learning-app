import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'get_current_pref_user_use_case.freezed.dart';

@Injectable()
class GetCurrentPrefUserUseCase
    extends BaseSyncUseCase<GetCurrentPrefUserInput, GetCurrentPrefUserOutput> {
  final AppRepository _appRepository;

  GetCurrentPrefUserUseCase(this._appRepository);

  @override
  GetCurrentPrefUserOutput buildUseCase(GetCurrentPrefUserInput input) {
    final user = _appRepository.getUserPreference();
    return GetCurrentPrefUserOutput(user: user);
  }
}

@freezed
class GetCurrentPrefUserInput extends BaseInput with _$GetCurrentPrefUserInput {
  const factory GetCurrentPrefUserInput() = _GetCurrentPrefUserInput;
}

@freezed
class GetCurrentPrefUserOutput extends BaseOutput
    with _$GetCurrentPrefUserOutput {
  const GetCurrentPrefUserOutput._();
  const factory GetCurrentPrefUserOutput({
    required User user,
  }) = _GetCurrentPrefUserOutput;
}
