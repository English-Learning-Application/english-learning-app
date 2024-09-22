import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../logic.dart';

part 'is_logged_in_use_case.freezed.dart';

@Injectable()
class IsLoggedInUseCase
    extends BaseSyncUseCase<IsLoggedInInput, IsLoggedInOutput> {
  final AppRepository _appRepository;

  const IsLoggedInUseCase(this._appRepository);

  @override
  IsLoggedInOutput buildUseCase(IsLoggedInInput input) {
    return IsLoggedInOutput(isLoggedIn: _appRepository.isLoggedIn);
  }
}

@freezed
class IsLoggedInInput extends BaseInput with _$IsLoggedInInput {
  const factory IsLoggedInInput() = _IsLoggedInInput;
}

@freezed
class IsLoggedInOutput extends BaseOutput with _$IsLoggedInOutput {
  const factory IsLoggedInOutput({
    @Default(false) bool isLoggedIn,
  }) = _IsLoggedInOutput;
}
