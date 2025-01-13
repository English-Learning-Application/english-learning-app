import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'word.freezed.dart';

@freezed
class Word with _$Word {
  const factory Word({
    @Default(Word.defaultWordId) String wordId,
    @Default(Word.defaultEnglishWord) String englishWord,
    @Default(Word.defaultVietnameseWord) String vietnameseWord,
    @Default(Word.defaultFrenchWord) String frenchWord,
    @Default(Word.defaultWordType) WordType wordType,
    @Default(Word.defaultImageUrl) String imageUrl,
    @Default(Word.defaultPronunciation) String pronunciation,
    @Default(Word.defaultCreatedAt) DateTime? createdAt,
    @Default(Word.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Word;

  static const defaultWordId = '';
  static const defaultEnglishWord = '';
  static const defaultVietnameseWord = '';
  static const defaultFrenchWord = '';
  static const defaultWordType = WordType.noun;
  static const defaultImageUrl = '';
  static const defaultPronunciation = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
