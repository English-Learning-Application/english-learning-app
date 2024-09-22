import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'clear_current_user_data_use_case.freezed.dart';

@Injectable()
class ClearCurrentUserDataUseCase extends BaseSyncUseCase<
    ClearCurrentUserDataInput, ClearCurrentUserDataOutput> {
  final AppRepository _appRepository;

  ClearCurrentUserDataUseCase(this._appRepository);

  @override
  ClearCurrentUserDataOutput buildUseCase(ClearCurrentUserDataInput input) {
    _appRepository.clearCurrentUserData();
    return const ClearCurrentUserDataOutput();
  }
}

@freezed
class ClearCurrentUserDataInput extends BaseInput
    with _$ClearCurrentUserDataInput {
  const factory ClearCurrentUserDataInput() = _ClearCurrentUserDataInput;
}

@freezed
class ClearCurrentUserDataOutput extends BaseOutput
    with _$ClearCurrentUserDataOutput {
  const factory ClearCurrentUserDataOutput() = _ClearCurrentUserDataOutput;
}
