import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_language_courses_by_language_and_level_use_case.freezed.dart';

@Injectable()
class GetLanguageCoursesByLanguageAndLevelUseCase extends BaseFutureUseCase<
    GetLanguageCoursesByLanguageAndLevelInput,
    GetLanguageCoursesByLanguageAndLevelOutput> {
  final LanguageCourseRepository _languageCourseRepository;

  const GetLanguageCoursesByLanguageAndLevelUseCase(
    this._languageCourseRepository,
  );

  @override
  Future<GetLanguageCoursesByLanguageAndLevelOutput> buildUseCase(
      GetLanguageCoursesByLanguageAndLevelInput input) async {
    final resp =
        await _languageCourseRepository.getLanguageCoursesByLevelAndLanguage(
      language: input.language,
      level: input.level,
    );

    return GetLanguageCoursesByLanguageAndLevelOutput(
      languageCourses: resp,
    );
  }
}

@freezed
class GetLanguageCoursesByLanguageAndLevelInput extends BaseInput
    with _$GetLanguageCoursesByLanguageAndLevelInput {
  const GetLanguageCoursesByLanguageAndLevelInput._();
  const factory GetLanguageCoursesByLanguageAndLevelInput({
    required LearningLanguage language,
    required LanguageLevel level,
  }) = _GetLanguageCoursesByLanguageAndLevelInput;
}

@freezed
class GetLanguageCoursesByLanguageAndLevelOutput extends BaseOutput
    with _$GetLanguageCoursesByLanguageAndLevelOutput {
  const GetLanguageCoursesByLanguageAndLevelOutput._();
  const factory GetLanguageCoursesByLanguageAndLevelOutput({
    required List<LanguageCourse> languageCourses,
  }) = _GetLanguageCoursesByLanguageAndLevelOutput;
}
