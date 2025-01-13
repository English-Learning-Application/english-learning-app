import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiTenseFormDataMapper extends BaseDataMapper<ApiTenseFormData, TenseForm>
    with DataMapperMixin {
  @override
  ApiTenseFormData mapToData(TenseForm entity) {
    return ApiTenseFormData(
      tenseFormId: entity.tenseFormId,
      tenseFormSubject: entity.tenseFormSubject,
      tenseFormPositiveRule: entity.tenseFormPositiveRule,
      tenseFormNegativeRule: entity.tenseFormNegativeRule,
      tenseFormQuestionRule: entity.tenseFormQuestionRule,
      tenseFormPositiveExample: entity.tenseFormPositiveExample,
      tenseFormNegativeExample: entity.tenseFormNegativeExample,
      tenseFormQuestionExample: entity.tenseFormQuestionExample,
      createdAt: entity.tenseFormCreatedAt?.toIso8601String(),
      updatedAt: entity.tenseFormUpdatedAt?.toIso8601String(),
    );
  }

  @override
  TenseForm mapToEntity(ApiTenseFormData? data) {
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
      tenseFormCreatedAt: DateTimeUtils.tryParse(date: data?.createdAt),
      tenseFormUpdatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
