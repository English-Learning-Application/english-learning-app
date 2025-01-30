import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'pronunciation_learning_update_use_case.freezed.dart';

@Injectable()
class PronunciationLearningUpdateUseCase extends BaseFutureUseCase<
    PronunciationLearningUpdateInput, PronunciationLearningUpdateOutput> {
  final ExerciseRepository _exerciseRepository;

  const PronunciationLearningUpdateUseCase(this._exerciseRepository);

  @override
  Future<PronunciationLearningUpdateOutput> buildUseCase(
      PronunciationLearningUpdateInput input) async {
    final resp = await _exerciseRepository.updatePronunciationLearning(
      pronunciationLearnings: input.pronunciationLearningEntities,
    );
    return PronunciationLearningUpdateOutput(pronunciationLearnings: resp);
  }
}

@freezed
class PronunciationLearningUpdateInput extends BaseInput
    with _$PronunciationLearningUpdateInput {
  const factory PronunciationLearningUpdateInput({
    required List<PronunciationLearningEntity> pronunciationLearningEntities,
  }) = _PronunciationLearningUpdateInput;
}

@freezed
class PronunciationLearningUpdateOutput extends BaseOutput
    with _$PronunciationLearningUpdateOutput {
  const factory PronunciationLearningUpdateOutput({
    required List<PronunciationLearning> pronunciationLearnings,
  }) = _PronunciationLearningUpdateOutput;
}
