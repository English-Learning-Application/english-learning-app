import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiTenseDataMapper extends BaseDataMapper<ApiTenseData, Tense>
    with DataMapperMixin {
  final ApiTenseFormDataMapper _apiTenseFormDataMapper;

  const ApiTenseDataMapper(this._apiTenseFormDataMapper);

  @override
  ApiTenseData mapToData(Tense entity) {
    return ApiTenseData(
      tenseId: entity.tenseId,
      englishTenseName: entity.englishTenseName,
      vietnameseTenseName: entity.vietnameseTenseName,
      frenchTenseName: entity.frenchTenseName,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      tenseRule: entity.tenseRule,
      tenseExample: entity.tenseExample,
      tenseForms: entity.tenseForms
          .map((e) => _apiTenseFormDataMapper.mapToData(e))
          .toList(),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Tense mapToEntity(ApiTenseData? data) {
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
      tenseForms: data?.tenseForms
              ?.map((e) => _apiTenseFormDataMapper.mapToEntity(e))
              .toList() ??
          Tense.defaultTenseForms,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
