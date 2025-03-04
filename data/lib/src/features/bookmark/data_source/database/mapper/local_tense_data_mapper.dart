import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../model/local_tense_data.dart';

@Injectable()
class LocalTenseDataMapper extends BaseDataMapper<LocalTenseData, Tense>
    with DataMapperMixin {
  final LocalTenseFormDataMapper _localTenseFormDataMapper;

  const LocalTenseDataMapper(this._localTenseFormDataMapper);

  @override
  LocalTenseData mapToData(Tense entity) {
    return LocalTenseData(
      tenseId: entity.tenseId,
      englishTenseName: entity.englishTenseName,
      vietnameseTenseName: entity.vietnameseTenseName,
      frenchTenseName: entity.frenchTenseName,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      tenseRule: entity.tenseRule,
      tenseExample: entity.tenseExample,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    )..tenseForms.addAll(
        _localTenseFormDataMapper.mapToListData(entity.tenseForms),
      );
  }

  @override
  Tense mapToEntity(LocalTenseData? data) {
    return Tense(
      tenseId: data?.tenseId ?? Tense.defaultTenseId,
      englishTenseName: data?.englishTenseName ?? Tense.defaultEnglishTenseName,
      vietnameseTenseName:
          data?.vietnameseTenseName ?? Tense.defaultVietnameseTenseName,
      frenchTenseName: data?.frenchTenseName ?? Tense.defaultFrenchTenseName,
      englishDescription:
          data?.englishDescription ?? Tense.defaultEnglishDescription,
      vietnameseDescription:
          data?.vietnameseDescription ?? Tense.defaultVietnameseDescription,
      frenchDescription:
          data?.frenchDescription ?? Tense.defaultFrenchDescription,
      tenseRule: data?.tenseRule ?? Tense.defaultTenseRule,
      tenseExample: data?.tenseExample ?? Tense.defaultTenseExample,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
      tenseForms: _localTenseFormDataMapper.mapToListEntities(data?.tenseForms),
    );
  }
}

@Injectable()
class LocalTenseFormDataMapper
    extends BaseDataMapper<LocalTenseFormData, TenseForm> with DataMapperMixin {
  @override
  LocalTenseFormData mapToData(TenseForm entity) {
    return LocalTenseFormData(
      tenseFormId: entity.tenseFormId,
      tenseFormSubject: entity.tenseFormSubject,
      tenseFormPositiveRule: entity.tenseFormPositiveRule,
      tenseFormNegativeRule: entity.tenseFormNegativeRule,
      tenseFormQuestionRule: entity.tenseFormQuestionRule,
      tenseFormPositiveExample: entity.tenseFormPositiveExample,
      tenseFormNegativeExample: entity.tenseFormNegativeExample,
      tenseFormQuestionExample: entity.tenseFormQuestionExample,
      tenseFormCreatedAt: entity.tenseFormCreatedAt?.toIso8601String(),
      tenseFormUpdatedAt: entity.tenseFormUpdatedAt?.toIso8601String(),
    );
  }

  @override
  TenseForm mapToEntity(LocalTenseFormData? data) {
    return TenseForm(
      tenseFormId: data?.tenseFormId ?? TenseForm.defaultTenseFormId,
      tenseFormSubject:
          data?.tenseFormSubject ?? TenseForm.defaultTenseFormSubject,
      tenseFormPositiveRule:
          data?.tenseFormPositiveRule ?? TenseForm.defaultTenseFormPositiveRule,
      tenseFormNegativeRule:
          data?.tenseFormNegativeRule ?? TenseForm.defaultTenseFormNegativeRule,
      tenseFormQuestionRule:
          data?.tenseFormQuestionRule ?? TenseForm.defaultTenseFormQuestionRule,
      tenseFormPositiveExample: data?.tenseFormPositiveExample ??
          TenseForm.defaultTenseFormPositiveExample,
      tenseFormNegativeExample: data?.tenseFormNegativeExample ??
          TenseForm.defaultTenseFormNegativeExample,
      tenseFormQuestionExample: data?.tenseFormQuestionExample ??
          TenseForm.defaultTenseFormQuestionExample,
      tenseFormCreatedAt:
          DateTimeUtils.tryParse(date: data?.tenseFormCreatedAt),
      tenseFormUpdatedAt:
          DateTimeUtils.tryParse(date: data?.tenseFormUpdatedAt),
    );
  }
}
