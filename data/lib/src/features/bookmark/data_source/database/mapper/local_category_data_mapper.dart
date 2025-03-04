import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_category_course_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalCategoryDataMapper
    extends BaseDataMapper<LocalCategoryData, Category> with DataMapperMixin {
  @override
  LocalCategoryData mapToData(Category entity) {
    return LocalCategoryData(
      categoryId: entity.categoryId,
      englishName: entity.englishName,
      vietnameseName: entity.vietnameseName,
      frenchName: entity.frenchName,
      categoryKey: entity.categoryKey,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      imageUrl: entity.imageUrl,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Category mapToEntity(LocalCategoryData? data) {
    return Category(
      categoryId: data?.categoryId ?? Category.defaultCategoryId,
      englishName: data?.englishName ?? Category.defaultEnglishName,
      vietnameseName: data?.vietnameseName ?? Category.defaultVietnameseName,
      frenchName: data?.frenchName ?? Category.defaultFrenchName,
      categoryKey: data?.categoryKey ?? Category.defaultCategoryKey,
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
