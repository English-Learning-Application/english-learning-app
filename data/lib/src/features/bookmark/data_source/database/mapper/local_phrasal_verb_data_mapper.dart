import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_phrasal_verb_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalPhrasalVerbDataMapper
    extends BaseDataMapper<LocalPhrasalVerbData, PhrasalVerb>
    with DataMapperMixin {
  @override
  LocalPhrasalVerbData mapToData(PhrasalVerb entity) {
    return LocalPhrasalVerbData(
      phrasalVerbId: entity.phrasalVerbId,
      englishPhrasalVerb: entity.englishPhrasalVerb,
      vietnamesePhrasalVerb: entity.vietnamesePhrasalVerb,
      frenchPhrasalVerb: entity.frenchPhrasalVerb,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  PhrasalVerb mapToEntity(LocalPhrasalVerbData? data) {
    return PhrasalVerb(
      phrasalVerbId: data?.phrasalVerbId ?? PhrasalVerb.defaultPhrasalVerbId,
      englishPhrasalVerb:
          data?.englishPhrasalVerb ?? PhrasalVerb.defaultEnglishPhrasalVerb,
      vietnamesePhrasalVerb: data?.vietnamesePhrasalVerb ??
          PhrasalVerb.defaultVietnamesePhrasalVerb,
      frenchPhrasalVerb:
          data?.frenchPhrasalVerb ?? PhrasalVerb.defaultFrenchPhrasalVerb,
      englishDescription:
          data?.englishDescription ?? PhrasalVerb.defaultEnglishDescription,
      vietnameseDescription: data?.vietnameseDescription ??
          PhrasalVerb.defaultVietnameseDescription,
      frenchDescription:
          data?.frenchDescription ?? PhrasalVerb.defaultFrenchDescription,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
