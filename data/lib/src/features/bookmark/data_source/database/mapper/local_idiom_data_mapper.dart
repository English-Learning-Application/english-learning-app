import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_idiom_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalIdiomDataMapper extends BaseDataMapper<LocalIdiomData, Idiom>
    with DataMapperMixin {
  @override
  LocalIdiomData mapToData(Idiom entity) {
    return LocalIdiomData(
      idiomId: entity.idiomId,
      englishIdiom: entity.englishIdiom,
      vietnameseIdiom: entity.vietnameseIdiom,
      frenchIdiom: entity.frenchIdiom,
      englishIdiomMeaning: entity.englishIdiomMeaning,
      vietnameseIdiomMeaning: entity.vietnameseIdiomMeaning,
      frenchIdiomMeaning: entity.frenchIdiomMeaning,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Idiom mapToEntity(LocalIdiomData? data) {
    return Idiom(
      idiomId: data?.idiomId ?? Idiom.defaultIdiomId,
      englishIdiom: data?.englishIdiom ?? Idiom.defaultEnglishIdiom,
      vietnameseIdiom: data?.vietnameseIdiom ?? Idiom.defaultVietnameseIdiom,
      frenchIdiom: data?.frenchIdiom ?? Idiom.defaultFrenchIdiom,
      englishIdiomMeaning:
          data?.englishIdiomMeaning ?? Idiom.defaultEnglishIdiomMeaning,
      vietnameseIdiomMeaning:
          data?.vietnameseIdiomMeaning ?? Idiom.defaultVietnameseIdiomMeaning,
      frenchIdiomMeaning:
          data?.frenchIdiomMeaning ?? Idiom.defaultFrenchIdiomMeaning,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
