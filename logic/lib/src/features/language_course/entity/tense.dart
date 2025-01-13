import 'package:freezed_annotation/freezed_annotation.dart';

part 'tense.freezed.dart';

@freezed
class Tense with _$Tense {
  const factory Tense({
    @Default(Tense.defaultTenseId) String tenseId,
    @Default(Tense.defaultEnglishTenseName) String englishTenseName,
    @Default(Tense.defaultVietnameseTenseName) String vietnameseTenseName,
    @Default(Tense.defaultFrenchTenseName) String frenchTenseName,
    @Default(Tense.defaultEnglishDescription) String englishDescription,
    @Default(Tense.defaultVietnameseDescription) String vietnameseDescription,
    @Default(Tense.defaultFrenchDescription) String frenchDescription,
    @Default(Tense.defaultTenseRule) String tenseRule,
    @Default(Tense.defaultTenseExample) String tenseExample,
    @Default(Tense.defaultTenseForms) List<TenseForm> tenseForms,
    @Default(Tense.defaultCreatedAt) DateTime? createdAt,
    @Default(Tense.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Tense;

  static const defaultTenseId = '';
  static const defaultEnglishTenseName = '';
  static const defaultVietnameseTenseName = '';
  static const defaultFrenchTenseName = '';
  static const defaultEnglishDescription = '';
  static const defaultVietnameseDescription = '';
  static const defaultFrenchDescription = '';
  static const defaultTenseRule = '';
  static const defaultTenseExample = '';
  static const defaultTenseForms = <TenseForm>[];
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}

@freezed
class TenseForm with _$TenseForm {
  const factory TenseForm({
    @Default(TenseForm.defaultTenseFormId) String tenseFormId,
    @Default(TenseForm.defaultTenseFormSubject) String tenseFormSubject,
    @Default(TenseForm.defaultTenseFormPositiveRule)
    String tenseFormPositiveRule,
    @Default(TenseForm.defaultTenseFormNegativeRule)
    String tenseFormNegativeRule,
    @Default(TenseForm.defaultTenseFormQuestionRule)
    String tenseFormQuestionRule,
    @Default(TenseForm.defaultTenseFormPositiveExample)
    String tenseFormPositiveExample,
    @Default(TenseForm.defaultTenseFormNegativeExample)
    String tenseFormNegativeExample,
    @Default(TenseForm.defaultTenseFormQuestionExample)
    String tenseFormQuestionExample,
    @Default(TenseForm.defaultTenseFormCreatedAt) DateTime? tenseFormCreatedAt,
    @Default(TenseForm.defaultTenseFormUpdatedAt) DateTime? tenseFormUpdatedAt,
  }) = _TenseForm;

  static const defaultTenseFormId = '';
  static const defaultTenseFormSubject = '';
  static const defaultTenseFormPositiveRule = '';
  static const defaultTenseFormNegativeRule = '';
  static const defaultTenseFormQuestionRule = '';
  static const defaultTenseFormPositiveExample = '';
  static const defaultTenseFormNegativeExample = '';
  static const defaultTenseFormQuestionExample = '';
  static const DateTime? defaultTenseFormCreatedAt = null;
  static const DateTime? defaultTenseFormUpdatedAt = null;
}
