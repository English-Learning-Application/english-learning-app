import 'package:objectbox/objectbox.dart';

@Entity()
class LocalSentenceData {
  @Id()
  int? id;
  String? sentenceId;
  String? englishSentence;
  String? vietnameseSentence;
  String? frenchSentence;
  String? exampleUsage;
  String? createdAt;
  String? updatedAt;

  LocalSentenceData({
    this.id,
    this.sentenceId,
    this.englishSentence,
    this.vietnameseSentence,
    this.frenchSentence,
    this.exampleUsage,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        sentenceId.hashCode ^
        englishSentence.hashCode ^
        vietnameseSentence.hashCode ^
        frenchSentence.hashCode ^
        exampleUsage.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalSentenceData(id: $id, sentenceId: $sentenceId, englishSentence: $englishSentence, vietnameseSentence: $vietnameseSentence, frenchSentence: $frenchSentence, exampleUsage: $exampleUsage, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalSentenceData &&
        other.id == id &&
        other.sentenceId == sentenceId &&
        other.englishSentence == englishSentence &&
        other.vietnameseSentence == vietnameseSentence &&
        other.frenchSentence == frenchSentence &&
        other.exampleUsage == exampleUsage &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
