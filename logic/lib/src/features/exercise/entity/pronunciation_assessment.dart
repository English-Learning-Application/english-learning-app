import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation_assessment.freezed.dart';

@freezed
class PronunciationAssessment with _$PronunciationAssessment {
  const PronunciationAssessment._();

  const factory PronunciationAssessment({
    @Default(PronunciationAssessment.defaultId) String id,
    @Default(
      PronunciationAssessment.defaultPronunciationWords,
    )
    List<PronunciationWord> words,
    @Default(PronunciationAssessment.defaultPronunciationLearningId)
    String pronunciationLearningId,
    @Default(PronunciationAssessment.defaultScore) int score,
    @Default(PronunciationAssessment.defaultPronunciationAccentPrediction)
    PronunciationAccentPrediction pronunciationAccentPrediction,
    @Default(PronunciationAssessment.defaultScoreEstimates)
    ScoreEstimates scoreEstimates,
  }) = _PronunciationAssessment;

  static const defaultPronunciationWords = <PronunciationWord>[];
  static const defaultPronunciationLearningId = '';
  static const defaultScore = 0;
  static const defaultPronunciationAccentPrediction =
      PronunciationAccentPrediction();
  static const defaultScoreEstimates = ScoreEstimates();
  static const defaultId = '';
}

@freezed
class PronunciationWord with _$PronunciationWord {
  const PronunciationWord._();

  const factory PronunciationWord({
    @Default(PronunciationWord.defaultLabel) String label,
    @Default(PronunciationWord.defaultScore) int score,
  }) = _PronunciationWord;

  static const defaultLabel = '';
  static const defaultScore = 0;
}

@freezed
class PronunciationAccentPrediction with _$PronunciationAccentPrediction {
  const PronunciationAccentPrediction._();

  const factory PronunciationAccentPrediction({
    @Default(PronunciationAccentPrediction.defaultUsAccent) int usAccent,
    @Default(PronunciationAccentPrediction.defaultUkAccent) int ukAccent,
    @Default(PronunciationAccentPrediction.defaultAusAccent) int ausAccent,
  }) = _PronunciationAccentPrediction;

  static const int defaultUsAccent = 0;
  static const int defaultUkAccent = 0;
  static const int defaultAusAccent = 0;
}

@freezed
class ScoreEstimates with _$ScoreEstimates {
  const ScoreEstimates._();

  const factory ScoreEstimates({
    @Default(ScoreEstimates.defaultIelts) String ielts,
    @Default(ScoreEstimates.defaultToefl) String toefl,
    @Default(ScoreEstimates.defaultCefr) String cefr,
    @Default(ScoreEstimates.defaultPteGeneral) String pteGeneral,
  }) = _ScoreEstimates;

  static const defaultIelts = '';
  static const defaultToefl = '';
  static const defaultCefr = '';
  static const defaultPteGeneral = '';
}
