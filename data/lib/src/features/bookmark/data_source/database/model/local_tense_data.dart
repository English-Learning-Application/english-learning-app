import 'package:objectbox/objectbox.dart';

@Entity()
class LocalTenseData {
  @Id()
  int? id;
  String? tenseId;
  String? englishTenseName;
  String? vietnameseTenseName;
  String? frenchTenseName;
  String? englishDescription;
  String? vietnameseDescription;
  String? frenchDescription;
  String? tenseRule;
  String? tenseExample;
  String? createdAt;
  String? updatedAt;

  final tenseForms = ToMany<LocalTenseFormData>();

  LocalTenseData({
    this.id,
    this.tenseId,
    this.englishTenseName,
    this.vietnameseTenseName,
    this.frenchTenseName,
    this.englishDescription,
    this.vietnameseDescription,
    this.frenchDescription,
    this.tenseRule,
    this.tenseExample,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        tenseId.hashCode ^
        englishTenseName.hashCode ^
        vietnameseTenseName.hashCode ^
        frenchTenseName.hashCode ^
        englishDescription.hashCode ^
        vietnameseDescription.hashCode ^
        frenchDescription.hashCode ^
        tenseRule.hashCode ^
        tenseExample.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        tenseForms.hashCode;
  }

  @override
  String toString() {
    return "LocalTenseData(id: $id, tenseId: $tenseId, englishTenseName: $englishTenseName, vietnameseTenseName: $vietnameseTenseName, frenchTenseName: $frenchTenseName, englishDescription: $englishDescription, vietnameseDescription: $vietnameseDescription, frenchDescription: $frenchDescription, tenseRule: $tenseRule, tenseExample: $tenseExample, createdAt: $createdAt, updatedAt: $updatedAt, tenseForms: $tenseForms)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalTenseData &&
        other.id == id &&
        other.tenseId == tenseId &&
        other.englishTenseName == englishTenseName &&
        other.vietnameseTenseName == vietnameseTenseName &&
        other.frenchTenseName == frenchTenseName &&
        other.englishDescription == englishDescription &&
        other.vietnameseDescription == vietnameseDescription &&
        other.frenchDescription == frenchDescription &&
        other.tenseRule == tenseRule &&
        other.tenseExample == tenseExample &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.tenseForms == tenseForms;
  }
}

@Entity()
class LocalTenseFormData {
  @Id()
  int? id;
  String? tenseFormId;
  String? tenseFormSubject;
  String? tenseFormPositiveRule;
  String? tenseFormNegativeRule;
  String? tenseFormQuestionRule;
  String? tenseFormPositiveExample;
  String? tenseFormNegativeExample;
  String? tenseFormQuestionExample;
  String? tenseFormCreatedAt;
  String? tenseFormUpdatedAt;

  LocalTenseFormData({
    this.id,
    this.tenseFormId,
    this.tenseFormSubject,
    this.tenseFormPositiveRule,
    this.tenseFormNegativeRule,
    this.tenseFormQuestionRule,
    this.tenseFormPositiveExample,
    this.tenseFormNegativeExample,
    this.tenseFormQuestionExample,
    this.tenseFormCreatedAt,
    this.tenseFormUpdatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        tenseFormId.hashCode ^
        tenseFormSubject.hashCode ^
        tenseFormPositiveRule.hashCode ^
        tenseFormNegativeRule.hashCode ^
        tenseFormQuestionRule.hashCode ^
        tenseFormPositiveExample.hashCode ^
        tenseFormNegativeExample.hashCode ^
        tenseFormQuestionExample.hashCode ^
        tenseFormCreatedAt.hashCode ^
        tenseFormUpdatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalTenseFormData(id: $id, tenseFormId: $tenseFormId, tenseFormSubject: $tenseFormSubject, tenseFormPositiveRule: $tenseFormPositiveRule, tenseFormNegativeRule: $tenseFormNegativeRule, tenseFormQuestionRule: $tenseFormQuestionRule, tenseFormPositiveExample: $tenseFormPositiveExample, tenseFormNegativeExample: $tenseFormNegativeExample, tenseFormQuestionExample: $tenseFormQuestionExample, tenseFormCreatedAt: $tenseFormCreatedAt, tenseFormUpdatedAt: $tenseFormUpdatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalTenseFormData &&
        other.id == id &&
        other.tenseFormId == tenseFormId &&
        other.tenseFormSubject == tenseFormSubject &&
        other.tenseFormPositiveRule == tenseFormPositiveRule &&
        other.tenseFormNegativeRule == tenseFormNegativeRule &&
        other.tenseFormQuestionRule == tenseFormQuestionRule &&
        other.tenseFormPositiveExample == tenseFormPositiveExample &&
        other.tenseFormNegativeExample == tenseFormNegativeExample &&
        other.tenseFormQuestionExample == tenseFormQuestionExample &&
        other.tenseFormCreatedAt == tenseFormCreatedAt &&
        other.tenseFormUpdatedAt == tenseFormUpdatedAt;
  }
}
