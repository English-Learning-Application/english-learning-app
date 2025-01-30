import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiCategoryMapper extends BaseDataMapper<ApiCategory, Category>
    with DataMapperMixin {
  @override
  ApiCategory mapToData(Category entity) {
    return ApiCategory(
      categoryId: entity.categoryId,
      categoryKey: entity.categoryKey,
      englishName: entity.englishName,
      vietnameseName: entity.vietnameseName,
      frenchName: entity.frenchName,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      imageUrl: entity.imageUrl,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Category mapToEntity(ApiCategory? data) {
    return Category(
      categoryId: data?.categoryId ?? Category.defaultCategoryId,
      categoryKey: data?.categoryKey ?? Category.defaultCategoryKey,
      englishName: data?.englishName ?? Category.defaultEnglishName,
      vietnameseName: data?.vietnameseName ?? Category.defaultVietnameseName,
      frenchName: data?.frenchName ?? Category.defaultFrenchName,
      englishDescription:
          data?.englishDescription ?? Category.defaultEnglishDescription,
      vietnameseDescription:
          data?.vietnameseDescription ?? Category.defaultVietnameseDescription,
      frenchDescription:
          data?.frenchDescription ?? Category.defaultFrenchDescription,
      imageUrl: data?.imageUrl ?? Category.defaultImageUrl,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
