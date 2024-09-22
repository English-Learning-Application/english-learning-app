import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../logic.dart';

part 'save_language_code_use_case.freezed.dart';

@Injectable()
class SaveLanguageCodeUseCase
    extends BaseFutureUseCase<SaveLanguageCodeInput, SaveLanguageCodeOutput> {
  final AppRepository _appRepository;

  const SaveLanguageCodeUseCase(this._appRepository);

  @override
  Future<SaveLanguageCodeOutput> buildUseCase(
      SaveLanguageCodeInput input) async {
    final resp = await _appRepository.saveLanguageCode(input.languageCode);
    return SaveLanguageCodeOutput(isSuccess: resp);
  }
}

@freezed
class SaveLanguageCodeInput extends BaseInput with _$SaveLanguageCodeInput {
  const factory SaveLanguageCodeInput({
    required LanguageCode languageCode,
  }) = _SaveLanguageCodeInput;
}

@freezed
class SaveLanguageCodeOutput extends BaseOutput with _$SaveLanguageCodeOutput {
  const SaveLanguageCodeOutput._();
  const factory SaveLanguageCodeOutput({
    required bool isSuccess,
  }) = _SaveLanguageCodeOutput;
}
