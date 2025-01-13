import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence.freezed.dart';

@freezed
class Sentence with _$Sentence {
  const factory Sentence({
    @Default(Sentence.defaultSentenceId) String sentenceId,
    @Default(Sentence.defaultEnglishSentence) String englishSentence,
    @Default(Sentence.defaultVietnameseSentence) String vietnameseSentence,
    @Default(Sentence.defaultFrenchSentence) String frenchSentence,
    @Default(Sentence.defaultExampleUsage) Map<String, dynamic> exampleUsage,
    @Default(Sentence.defaultCreatedAt) DateTime? createdAt,
    @Default(Sentence.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Sentence;

  static const defaultSentenceId = '';
  static const defaultEnglishSentence = '';
  static const defaultVietnameseSentence = '';
  static const defaultFrenchSentence = '';
  static const Map<String, dynamic> defaultExampleUsage = {};
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
