import 'dart:convert';

import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiPhoneticDataMapper extends BaseDataMapper<ApiPhoneticData, Phonetic>
    with DataMapperMixin {
  @override
  ApiPhoneticData mapToData(Phonetic entity) {
    return ApiPhoneticData(
      phoneticId: entity.phoneticId,
      phoneticSymbol: entity.phoneticSymbol,
      phoneticSound: entity.phoneticSound,
      englishPhoneticGuide: entity.englishPhoneticGuide,
      frenchPhoneticGuide: entity.frenchPhoneticGuide,
      vietnamesePhoneticGuide: entity.vietnamesePhoneticGuide,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Phonetic mapToEntity(ApiPhoneticData? data) {
    return Phonetic(
      phoneticId: data?.phoneticId ?? Phonetic.defaultPhoneticId,
      phoneticSymbol: data?.phoneticSymbol ?? Phonetic.defaultPhoneticSymbol,
      phoneticSound: data?.phoneticSound ?? Phonetic.defaultPhoneticSound,
      englishPhoneticGuide:
          data?.englishPhoneticGuide ?? Phonetic.defaultEnglishPhoneticGuide,
      frenchPhoneticGuide:
          data?.frenchPhoneticGuide ?? Phonetic.defaultFrenchPhoneticGuide,
      vietnamesePhoneticGuide: data?.vietnamesePhoneticGuide ??
          Phonetic.defaultVietnamesePhoneticGuide,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
