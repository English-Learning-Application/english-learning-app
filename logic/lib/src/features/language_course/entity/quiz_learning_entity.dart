import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_learning_entity.freezed.dart';

@freezed
class QuizLearningEntity with _$QuizLearningEntity {
  const QuizLearningEntity._();

  const factory QuizLearningEntity({
    @Default(QuizLearningEntity.defaultId) String id,
    @Default(QuizLearningEntity.defaultQuestion) String question,
    @Default(QuizLearningEntity.defaultAnswers) List<String> answers,
    @Default(QuizLearningEntity.defaultCorrectAnswerIndex)
    int correctAnswerIndex,
    @Default(QuizLearningEntity.defaultSelectedAnswerIndex)
    int selectedAnswerIndex,
    @Default(QuizLearningEntity.defaultImageUrl) String imageUrl,
  }) = _QuizLearningEntity;

  static const defaultId = '';
  static const defaultQuestion = '';
  static const List<String> defaultAnswers = [];
  static const int defaultCorrectAnswerIndex = 0;
  static const int defaultSelectedAnswerIndex = -1;
  static const String defaultImageUrl = '';

  bool get isCorrect => correctAnswerIndex == selectedAnswerIndex;
}
