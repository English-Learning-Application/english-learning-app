import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_phonetic_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalPhoneticDataMapper
    extends BaseDataMapper<LocalPhoneticData, Phonetic> with DataMapperMixin {
  @override
  LocalPhoneticData mapToData(Phonetic entity) {
    return LocalPhoneticData(
      phoneticId: entity.phoneticId,
      phoneticSymbol: entity.phoneticSymbol,
      phoneticSound: entity.phoneticSound,
      englishPhoneticGuide: entity.englishPhoneticGuide,
      vietnamesePhoneticGuide: entity.vietnamesePhoneticGuide,
      frenchPhoneticGuide: entity.frenchPhoneticGuide,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Phonetic mapToEntity(LocalPhoneticData? data) {
    return Phonetic(
      phoneticId: data?.phoneticId ?? Phonetic.defaultPhoneticId,
      phoneticSymbol: data?.phoneticSymbol ?? Phonetic.defaultPhoneticSymbol,
      phoneticSound: data?.phoneticSound ?? Phonetic.defaultPhoneticSound,
      englishPhoneticGuide:
          data?.englishPhoneticGuide ?? Phonetic.defaultEnglishPhoneticGuide,
      vietnamesePhoneticGuide: data?.vietnamesePhoneticGuide ??
          Phonetic.defaultVietnamesePhoneticGuide,
      frenchPhoneticGuide:
          data?.frenchPhoneticGuide ?? Phonetic.defaultFrenchPhoneticGuide,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
