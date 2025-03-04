import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_word_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalWordDataMapper extends BaseDataMapper<LocalWordData, Word>
    with DataMapperMixin {
  @override
  LocalWordData mapToData(Word entity) {
    return LocalWordData(
      wordId: entity.wordId,
      englishWord: entity.englishWord,
      vietnameseWord: entity.vietnameseWord,
      frenchWord: entity.frenchWord,
      wordType: entity.wordType.serverValue,
      imageUrl: entity.imageUrl,
      pronunciation: entity.pronunciation,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Word mapToEntity(LocalWordData? data) {
    return Word(
      wordId: data?.wordId ?? Word.defaultWordId,
      englishWord: data?.englishWord ?? Word.defaultEnglishWord,
      vietnameseWord: data?.vietnameseWord ?? Word.defaultVietnameseWord,
      frenchWord: data?.frenchWord ?? Word.defaultFrenchWord,
      wordType: WordType.fromServerValue(data?.wordType ?? ''),
      imageUrl: data?.imageUrl ?? Word.defaultImageUrl,
      pronunciation: data?.pronunciation ?? Word.defaultPronunciation,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
