import 'package:objectbox/objectbox.dart';

@Entity()
class LocalPhrasalVerbData {
  @Id()
  int? id;
  String? phrasalVerbId;
  String? englishPhrasalVerb;
  String? vietnamesePhrasalVerb;
  String? frenchPhrasalVerb;
  String? englishDescription;
  String? vietnameseDescription;
  String? frenchDescription;
  String? exampleUsage;
  String? createdAt;
  String? updatedAt;

  LocalPhrasalVerbData({
    this.id,
    this.phrasalVerbId,
    this.englishPhrasalVerb,
    this.vietnamesePhrasalVerb,
    this.frenchPhrasalVerb,
    this.englishDescription,
    this.vietnameseDescription,
    this.frenchDescription,
    this.exampleUsage,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        phrasalVerbId.hashCode ^
        englishPhrasalVerb.hashCode ^
        vietnamesePhrasalVerb.hashCode ^
        frenchPhrasalVerb.hashCode ^
        englishDescription.hashCode ^
        vietnameseDescription.hashCode ^
        frenchDescription.hashCode ^
        exampleUsage.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalPhrasalVerbData(id: $id, phrasalVerbId: $phrasalVerbId, englishPhrasalVerb: $englishPhrasalVerb, vietnamesePhrasalVerb: $vietnamesePhrasalVerb, frenchPhrasalVerb: $frenchPhrasalVerb, englishDescription: $englishDescription, vietnameseDescription: $vietnameseDescription, frenchDescription: $frenchDescription, exampleUsage: $exampleUsage, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalPhrasalVerbData &&
        other.id == id &&
        other.phrasalVerbId == phrasalVerbId &&
        other.englishPhrasalVerb == englishPhrasalVerb &&
        other.vietnamesePhrasalVerb == vietnamesePhrasalVerb &&
        other.frenchPhrasalVerb == frenchPhrasalVerb &&
        other.englishDescription == englishDescription &&
        other.vietnameseDescription == vietnameseDescription &&
        other.frenchDescription == frenchDescription &&
        other.exampleUsage == exampleUsage &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
