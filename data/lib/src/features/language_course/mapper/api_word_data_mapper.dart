import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiWordDataMapper extends BaseDataMapper<ApiWordData, Word>
    with DataMapperMixin {
  @override
  ApiWordData mapToData(Word entity) {
    return ApiWordData(
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
  Word mapToEntity(ApiWordData? data) {
    return Word(
      wordId: data?.wordId ?? Word.defaultWordId,
      englishWord: data?.englishWord ?? Word.defaultEnglishWord,
      vietnameseWord: data?.vietnameseWord ?? Word.defaultVietnameseWord,
      frenchWord: data?.frenchWord ?? Word.defaultFrenchWord,
      wordType:
          WordType.fromServerValue(data?.wordType) ?? Word.defaultWordType,
      imageUrl: data?.imageUrl ?? Word.defaultImageUrl,
      pronunciation: data?.pronunciation ?? Word.defaultPronunciation,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
