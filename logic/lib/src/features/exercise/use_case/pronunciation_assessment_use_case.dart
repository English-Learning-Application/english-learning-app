import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'pronunciation_assessment_use_case.freezed.dart';

@Injectable()
class PronunciationAssessmentUseCase extends BaseFutureUseCase<
    PronunciationAssessmentUseCaseInput, PronunciationAssessmentUseCaseOutput> {
  final ExerciseRepository _exerciseRepository;

  PronunciationAssessmentUseCase(this._exerciseRepository);

  @override
  Future<PronunciationAssessmentUseCaseOutput> buildUseCase(
      PronunciationAssessmentUseCaseInput input) async {
    final pronunciationAssessment =
        await _exerciseRepository.getPronunciationAssessment(
      id: input.id,
      text: input.text,
      audioPath: input.filePath,
      learningContentType: input.learningContentType,
    );

    return PronunciationAssessmentUseCaseOutput(
      pronunciationAssessment: pronunciationAssessment,
    );
  }
}

@freezed
class PronunciationAssessmentUseCaseInput extends BaseInput
    with _$PronunciationAssessmentUseCaseInput {
  const PronunciationAssessmentUseCaseInput._();
  const factory PronunciationAssessmentUseCaseInput({
    required String id,
    required String text,
    required String filePath,
    required LearningContentType learningContentType,
  }) = _PronunciationAssessmentUseCaseInput;
}

@freezed
class PronunciationAssessmentUseCaseOutput extends BaseOutput
    with _$PronunciationAssessmentUseCaseOutput {
  const PronunciationAssessmentUseCaseOutput._();
  const factory PronunciationAssessmentUseCaseOutput({
    required PronunciationAssessment pronunciationAssessment,
  }) = _PronunciationAssessmentUseCaseOutput;
}
