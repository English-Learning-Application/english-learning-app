import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'save_theme_mode_use_case.freezed.dart';

@Injectable()
class SaveThemeModeUseCase
    extends BaseFutureUseCase<SaveThemeModeInput, SaveThemeModeOutput> {
  final AppRepository _appRepository;

  const SaveThemeModeUseCase(this._appRepository);

  @override
  Future<SaveThemeModeOutput> buildUseCase(SaveThemeModeInput input) async {
    final resp = await _appRepository.saveAppTheme(input.appTheme);

    return SaveThemeModeOutput(isSuccess: resp);
  }
}

@freezed
class SaveThemeModeInput extends BaseInput with _$SaveThemeModeInput {
  const SaveThemeModeInput._();
  const factory SaveThemeModeInput({
    required AppThemeType appTheme,
  }) = _SaveThemeModeInput;
}

@freezed
class SaveThemeModeOutput extends BaseOutput with _$SaveThemeModeOutput {
  const SaveThemeModeOutput._();
  const factory SaveThemeModeOutput({
    required bool isSuccess,
  }) = _SaveThemeModeOutput;
}
