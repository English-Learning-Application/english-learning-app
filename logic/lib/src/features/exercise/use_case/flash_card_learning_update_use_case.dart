import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'flash_card_learning_update_use_case.freezed.dart';

@Injectable()
class FlashCardLearningUpdateUseCase extends BaseFutureUseCase<
    FlashCardLearningUpdateInput, FlashCardLearningUpdateOutput> {
  final ExerciseRepository _exerciseRepository;

  const FlashCardLearningUpdateUseCase(this._exerciseRepository);

  @override
  Future<FlashCardLearningUpdateOutput> buildUseCase(
      FlashCardLearningUpdateInput input) async {
    final flashCardLearnings =
        await _exerciseRepository.updateFlashCardLearning(
      flashCardLearnings: input.flashCardLearnings,
      learnedItemIds: input.learnedItemIds,
      skippedItemIds: input.skippedItemIds,
    );

    return FlashCardLearningUpdateOutput(
        flashCardLearnings: flashCardLearnings);
  }
}

@freezed
class FlashCardLearningUpdateInput extends BaseInput
    with _$FlashCardLearningUpdateInput {
  const factory FlashCardLearningUpdateInput({
    required List<FlashCardLearningEntity> flashCardLearnings,
    required List<String> learnedItemIds,
    required List<String> skippedItemIds,
  }) = _FlashCardLearningUpdateInput;
}

@freezed
class FlashCardLearningUpdateOutput extends BaseOutput
    with _$FlashCardLearningUpdateOutput {
  const factory FlashCardLearningUpdateOutput({
    required List<FlashCardLearning> flashCardLearnings,
  }) = _FlashCardLearningUpdateOutput;
}
