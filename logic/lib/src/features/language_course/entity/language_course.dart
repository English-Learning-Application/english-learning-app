import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic/logic.dart';

part 'language_course.freezed.dart';

@freezed
class LanguageCourse with _$LanguageCourse {
  const factory LanguageCourse({
    @Default(LanguageCourse.defaultLanguageCourseId) String languageCourseId,
    @Default(LanguageCourse.defaultLanguage) LearningLanguage language,
    @Default(LanguageCourse.defaultLevel) LanguageLevel level,
    @Default(LanguageCourse.defaultLearningType) LearningType learningType,
    @Default(LanguageCourse.defaultRequiredSubscription)
    bool requiredSubscription,
    @Default(LanguageCourse.defaultLanguageCourseLearningContents)
    List<LanguageCourseLearningContent> languageCourseLearningContents,
    @Default(LanguageCourse.defaultCreatedAt) DateTime? createdAt,
    @Default(LanguageCourse.defaultUpdatedAt) DateTime? updatedAt,
  }) = _LanguageCourse;

  static const defaultLanguageCourseId = '';
  static const defaultLanguage = LearningLanguage.english;
  static const defaultLevel = LanguageLevel.a1;
  static const defaultLearningType = LearningType.vocabulary;
  static const defaultRequiredSubscription = false;
  static const defaultLanguageCourseLearningContents =
      <LanguageCourseLearningContent>[];
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}

@freezed
class LanguageCourseLearningContent with _$LanguageCourseLearningContent {
  const factory LanguageCourseLearningContent({
    @Default(
        LanguageCourseLearningContent.defaultLanguageCourseLearningContentId)
    String languageCourseLearningContentId,
    @Default(LanguageCourseLearningContent.defaultLearningContentType)
    LearningContentType learningContentType,
    @Default(LanguageCourseLearningContent.defaultWords) List<Word> words,
    @Default(LanguageCourseLearningContent.defaultExpressions)
    List<Expression> expressions,
    @Default(LanguageCourseLearningContent.defaultIdioms) List<Idiom> idioms,
    @Default(LanguageCourseLearningContent.defaultSentences)
    List<Sentence> sentences,
    @Default(LanguageCourseLearningContent.defaultPhrasalVerbs)
    List<PhrasalVerb> phrasalVerbs,
    @Default(LanguageCourseLearningContent.defaultTenses) List<Tense> tenses,
    @Default(LanguageCourseLearningContent.defaultPhonetics)
    List<Phonetic> phonetics,
    @Default(LanguageCourseLearningContent.defaultEnglishTitle)
    String englishTitle,
    @Default(LanguageCourseLearningContent.defaultVietnameseTitle)
    String vietnameseTitle,
    @Default(LanguageCourseLearningContent.defaultFrenchTitle)
    String frenchTitle,
    @Default(LanguageCourseLearningContent.defaultEnglishDescription)
    String englishDescription,
    @Default(LanguageCourseLearningContent.defaultVietnameseDescription)
    String vietnameseDescription,
    @Default(LanguageCourseLearningContent.defaultFrenchDescription)
    String frenchDescription,
    @Default(LanguageCourseLearningContent.defaultCreatedAt)
    DateTime? createdAt,
    @Default(LanguageCourseLearningContent.defaultUpdatedAt)
    DateTime? updatedAt,
  }) = _LanguageCourseLearningContent;

  static const defaultLanguageCourseLearningContentId = '';
  static const defaultLearningContentType = LearningContentType.word;
  static const defaultWords = <Word>[];
  static const defaultExpressions = <Expression>[];
  static const defaultIdioms = <Idiom>[];
  static const defaultSentences = <Sentence>[];
  static const defaultPhrasalVerbs = <PhrasalVerb>[];
  static const defaultTenses = <Tense>[];
  static const defaultPhonetics = <Phonetic>[];
  static const defaultEnglishTitle = '';
  static const defaultVietnameseTitle = '';
  static const defaultFrenchTitle = '';
  static const defaultEnglishDescription = '';
  static const defaultVietnameseDescription = '';
  static const defaultFrenchDescription = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
