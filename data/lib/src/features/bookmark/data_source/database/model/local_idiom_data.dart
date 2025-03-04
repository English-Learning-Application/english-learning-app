import 'package:objectbox/objectbox.dart';

@Entity()
class LocalIdiomData {
  @Id()
  int? id;
  String? idiomId;
  String? englishIdiom;
  String? vietnameseIdiom;
  String? frenchIdiom;
  String? englishIdiomMeaning;
  String? vietnameseIdiomMeaning;
  String? frenchIdiomMeaning;
  String? exampleUsage;
  String? createdAt;
  String? updatedAt;

  LocalIdiomData({
    this.id,
    this.idiomId,
    this.englishIdiom,
    this.vietnameseIdiom,
    this.frenchIdiom,
    this.englishIdiomMeaning,
    this.vietnameseIdiomMeaning,
    this.frenchIdiomMeaning,
    this.exampleUsage,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        idiomId.hashCode ^
        englishIdiom.hashCode ^
        vietnameseIdiom.hashCode ^
        frenchIdiom.hashCode ^
        englishIdiomMeaning.hashCode ^
        vietnameseIdiomMeaning.hashCode ^
        frenchIdiomMeaning.hashCode ^
        exampleUsage.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalIdiomData(id: $id, idiomId: $idiomId, englishIdiom: $englishIdiom, vietnameseIdiom: $vietnameseIdiom, frenchIdiom: $frenchIdiom, englishIdiomMeaning: $englishIdiomMeaning, vietnameseIdiomMeaning: $vietnameseIdiomMeaning, frenchIdiomMeaning: $frenchIdiomMeaning, exampleUsage: $exampleUsage, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalIdiomData &&
        other.id == id &&
        other.idiomId == idiomId &&
        other.englishIdiom == englishIdiom &&
        other.vietnameseIdiom == vietnameseIdiom &&
        other.frenchIdiom == frenchIdiom &&
        other.englishIdiomMeaning == englishIdiomMeaning &&
        other.vietnameseIdiomMeaning == vietnameseIdiomMeaning &&
        other.frenchIdiomMeaning == frenchIdiomMeaning &&
        other.exampleUsage == exampleUsage &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
