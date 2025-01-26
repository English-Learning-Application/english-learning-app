import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'quiz_learning_update_use_case.freezed.dart';

@Injectable()
class QuizLearningUpdateUseCase extends BaseFutureUseCase<
    QuizLearningUpdateInput, QuizLearningUpdateOutput> {
  final ExerciseRepository _exerciseRepository;

  const QuizLearningUpdateUseCase(this._exerciseRepository);

  @override
  Future<QuizLearningUpdateOutput> buildUseCase(
      QuizLearningUpdateInput input) async {
    final resp = await _exerciseRepository.updateQuizLearning(
      quizLearnings: input.quizLearnings,
      correctItemIds: input.correctItemIds,
      incorrectItemIds: input.incorrectItemIds,
    );

    return QuizLearningUpdateOutput(quizLearnings: resp);
  }
}

@freezed
class QuizLearningUpdateInput extends BaseInput with _$QuizLearningUpdateInput {
  const factory QuizLearningUpdateInput({
    required List<QuizLearningEntity> quizLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
  }) = _QuizLearningUpdateInput;
}

@freezed
class QuizLearningUpdateOutput extends BaseOutput
    with _$QuizLearningUpdateOutput {
  const factory QuizLearningUpdateOutput({
    required List<QuizLearning> quizLearnings,
  }) = _QuizLearningUpdateOutput;
}
