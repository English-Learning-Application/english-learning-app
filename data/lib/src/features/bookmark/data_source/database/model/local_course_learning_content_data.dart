import 'package:objectbox/objectbox.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_idiom_data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_phonetic_data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_phrasal_verb_data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_sentence_data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_tense_data.dart';

import 'local_expression_data.dart';
import 'local_word_data.dart';

@Entity()
class LocalCourseLearningContentData {
  @Id()
  int? id;
  String? languageCourseLearningContentId;
  String? learningContentType;
  String? englishTitle;
  String? vietnameseTitle;
  String? frenchTitle;
  String? englishDescription;
  String? vietnameseDescription;
  String? frenchDescription;
  String? createdAt;
  String? updatedAt;

  final words = ToMany<LocalWordData>();
  final expressions = ToMany<LocalExpressionData>();
  final idioms = ToMany<LocalIdiomData>();
  final sentences = ToMany<LocalSentenceData>();
  final phrasalVerbs = ToMany<LocalPhrasalVerbData>();
  final tenses = ToMany<LocalTenseData>();
  final phonetics = ToMany<LocalPhoneticData>();

  LocalCourseLearningContentData({
    this.id,
    this.languageCourseLearningContentId,
    this.learningContentType,
    this.englishTitle,
    this.vietnameseTitle,
    this.frenchTitle,
    this.englishDescription,
    this.vietnameseDescription,
    this.frenchDescription,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        languageCourseLearningContentId.hashCode ^
        learningContentType.hashCode ^
        englishTitle.hashCode ^
        vietnameseTitle.hashCode ^
        frenchTitle.hashCode ^
        englishDescription.hashCode ^
        vietnameseDescription.hashCode ^
        frenchDescription.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        words.hashCode ^
        expressions.hashCode ^
        idioms.hashCode ^
        sentences.hashCode ^
        phrasalVerbs.hashCode ^
        tenses.hashCode ^
        phonetics.hashCode;
  }

  @override
  String toString() {
    return "LocalCourseLearningContentData(id: $id, languageCourseLearningContentId: $languageCourseLearningContentId, learningContentType: $learningContentType, englishTitle: $englishTitle, vietnameseTitle: $vietnameseTitle, frenchTitle: $frenchTitle, englishDescription: $englishDescription, vietnameseDescription: $vietnameseDescription, frenchDescription: $frenchDescription, createdAt: $createdAt, updatedAt: $updatedAt, words: $words, expressions: $expressions, idioms: $idioms, sentences: $sentences, phrasalVerbs: $phrasalVerbs, tenses: $tenses, phonetics: $phonetics)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalCourseLearningContentData &&
        other.id == id &&
        other.languageCourseLearningContentId ==
            languageCourseLearningContentId &&
        other.learningContentType == learningContentType &&
        other.englishTitle == englishTitle &&
        other.vietnameseTitle == vietnameseTitle &&
        other.frenchTitle == frenchTitle &&
        other.englishDescription == englishDescription &&
        other.vietnameseDescription == vietnameseDescription &&
        other.frenchDescription == frenchDescription &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.words == words &&
        other.expressions == expressions &&
        other.idioms == idioms &&
        other.sentences == sentences &&
        other.phrasalVerbs == phrasalVerbs &&
        other.tenses == tenses &&
        other.phonetics == phonetics;
  }
}
