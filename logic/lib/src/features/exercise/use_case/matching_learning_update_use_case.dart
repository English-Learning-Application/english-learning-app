import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'matching_learning_update_use_case.freezed.dart';

@Injectable()
class MatchingLearningUpdateUseCase extends BaseFutureUseCase<
    MatchingLearningUpdateInput, MatchingLearningUpdateOutput> {
  final ExerciseRepository _exerciseRepository;

  const MatchingLearningUpdateUseCase(this._exerciseRepository);

  @override
  Future<MatchingLearningUpdateOutput> buildUseCase(
      MatchingLearningUpdateInput input) async {
    final resp = await _exerciseRepository.updateMatchingLearning(
      matchingLearnings: input.matchingLearnings,
      correctItemIds: input.correctItemIds,
      incorrectItemIds: input.incorrectItemIds,
    );

    return MatchingLearningUpdateOutput(
      matchingLearnings: resp,
    );
  }
}

@freezed
class MatchingLearningUpdateInput extends BaseInput
    with _$MatchingLearningUpdateInput {
  const factory MatchingLearningUpdateInput({
    required List<MatchingLearningEntity> matchingLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
  }) = _MatchingLearningUpdateInput;
}

@freezed
class MatchingLearningUpdateOutput extends BaseOutput
    with _$MatchingLearningUpdateOutput {
  const factory MatchingLearningUpdateOutput({
    required List<MatchingLearning> matchingLearnings,
  }) = _MatchingLearningUpdateOutput;
}
