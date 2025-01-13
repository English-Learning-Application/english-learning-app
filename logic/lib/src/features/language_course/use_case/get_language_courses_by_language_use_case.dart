import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_language_courses_by_language_use_case.freezed.dart';

@Injectable()
class GetLanguageCoursesByLanguageUseCase extends BaseFutureUseCase<
    GetLanguageCoursesByLanguageInput, GetLanguageCoursesByLanguageOutput> {
  final LanguageCourseRepository _languageCourseRepository;

  const GetLanguageCoursesByLanguageUseCase(this._languageCourseRepository);

  @override
  Future<GetLanguageCoursesByLanguageOutput> buildUseCase(
    GetLanguageCoursesByLanguageInput input,
  ) async {
    final languageCourses =
        await _languageCourseRepository.getLanguageCoursesByLanguage(
      input.language,
    );
    return GetLanguageCoursesByLanguageOutput(
      languageCourses: languageCourses,
    );
  }
}

@freezed
class GetLanguageCoursesByLanguageInput extends BaseInput
    with _$GetLanguageCoursesByLanguageInput {
  const GetLanguageCoursesByLanguageInput._();
  const factory GetLanguageCoursesByLanguageInput({
    required LearningLanguage language,
  }) = _GetLanguageCoursesByLanguageInput;
}

@freezed
class GetLanguageCoursesByLanguageOutput extends BaseOutput
    with _$GetLanguageCoursesByLanguageOutput {
  const GetLanguageCoursesByLanguageOutput._();
  const factory GetLanguageCoursesByLanguageOutput({
    required List<LanguageCourse> languageCourses,
  }) = _GetLanguageCoursesByLanguageOutput;
}
