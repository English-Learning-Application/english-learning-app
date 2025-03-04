import 'package:objectbox/objectbox.dart';

@Entity()
class LocalWordData {
  @Id()
  int? id;
  String? wordId;
  String? englishWord;
  String? vietnameseWord;
  String? frenchWord;
  String? wordType;
  String? imageUrl;
  String? pronunciation;
  String? createdAt;
  String? updatedAt;

  LocalWordData({
    this.id,
    this.wordId,
    this.englishWord,
    this.vietnameseWord,
    this.frenchWord,
    this.wordType,
    this.imageUrl,
    this.pronunciation,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        wordId.hashCode ^
        englishWord.hashCode ^
        vietnameseWord.hashCode ^
        frenchWord.hashCode ^
        wordType.hashCode ^
        imageUrl.hashCode ^
        pronunciation.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalWordData(id: $id, wordId: $wordId, englishWord: $englishWord, vietnameseWord: $vietnameseWord, frenchWord: $frenchWord, wordType: $wordType, imageUrl: $imageUrl, pronunciation: $pronunciation, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalWordData &&
        other.id == id &&
        other.wordId == wordId &&
        other.englishWord == englishWord &&
        other.vietnameseWord == vietnameseWord &&
        other.frenchWord == frenchWord &&
        other.wordType == wordType &&
        other.imageUrl == imageUrl &&
        other.pronunciation == pronunciation &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
