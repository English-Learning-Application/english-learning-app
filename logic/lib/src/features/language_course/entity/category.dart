import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const Category._();

  const factory Category({
    @Default(Category.defaultCategoryId) String categoryId,
    @Default(Category.defaultCategoryKey) String categoryKey,
    @Default(Category.defaultEnglishName) String englishName,
    @Default(Category.defaultVietnameseName) String vietnameseName,
    @Default(Category.defaultFrenchName) String frenchName,
    @Default(Category.defaultEnglishDescription) String englishDescription,
    @Default(Category.defaultVietnameseDescription)
    String vietnameseDescription,
    @Default(Category.defaultFrenchDescription) String frenchDescription,
    @Default(Category.defaultImageUrl) String imageUrl,
    @Default(Category.defaultCreatedAt) DateTime? createdAt,
    @Default(Category.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Category;

  static const defaultCategoryId = '';
  static const defaultCategoryKey = '';
  static const defaultEnglishName = '';
  static const defaultVietnameseName = '';
  static const defaultFrenchName = '';
  static const defaultEnglishDescription = '';
  static const defaultVietnameseDescription = '';
  static const defaultFrenchDescription = '';
  static const defaultImageUrl = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;

  String get categoryImage => "${UrlConstants.appMediaBaseUrl}$imageUrl";
}
