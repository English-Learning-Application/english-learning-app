import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_sentence_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalSentenceDataMapper
    extends BaseDataMapper<LocalSentenceData, Sentence> with DataMapperMixin {
  @override
  LocalSentenceData mapToData(Sentence entity) {
    return LocalSentenceData(
      sentenceId: entity.sentenceId,
      englishSentence: entity.englishSentence,
      vietnameseSentence: entity.vietnameseSentence,
      frenchSentence: entity.frenchSentence,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Sentence mapToEntity(LocalSentenceData? data) {
    return Sentence(
      sentenceId: data?.sentenceId ?? Sentence.defaultSentenceId,
      englishSentence: data?.englishSentence ?? Sentence.defaultEnglishSentence,
      vietnameseSentence:
          data?.vietnameseSentence ?? Sentence.defaultVietnameseSentence,
      frenchSentence: data?.frenchSentence ?? Sentence.defaultFrenchSentence,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
