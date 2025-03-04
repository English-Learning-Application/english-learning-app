import 'package:data/src/features/bookmark/data_source/database/model/local_course_learning_content_data.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class LocalCategoryCourseData {
  @Id()
  int? id;
  String? categoryCourseId;
  String? language;
  String? englishName;
  String? vietnameseName;
  String? frenchName;
  String? createdAt;
  String? updatedAt;

  final languageCourseLearningContent =
      ToMany<LocalCourseLearningContentData>();
  final category = ToOne<LocalCategoryData>();

  LocalCategoryCourseData({
    this.id,
    this.categoryCourseId,
    this.language,
    this.englishName,
    this.vietnameseName,
    this.frenchName,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        categoryCourseId.hashCode ^
        language.hashCode ^
        englishName.hashCode ^
        vietnameseName.hashCode ^
        frenchName.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        languageCourseLearningContent.hashCode ^
        category.hashCode;
  }

  @override
  String toString() {
    return "LocalCategoryCourseData(id: $id, categoryCourseId: $categoryCourseId, language: $language, englishName: $englishName, vietnameseName: $vietnameseName, frenchName: $frenchName, createdAt: $createdAt, updatedAt: $updatedAt, languageCourseLearningContent: $languageCourseLearningContent, category: $category)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalCategoryCourseData &&
        other.id == id &&
        other.categoryCourseId == categoryCourseId &&
        other.language == language &&
        other.englishName == englishName &&
        other.vietnameseName == vietnameseName &&
        other.frenchName == frenchName &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.languageCourseLearningContent == languageCourseLearningContent &&
        other.category == category;
  }
}

@Entity()
class LocalCategoryData {
  @Id()
  int? id;
  String? categoryId;
  String? categoryKey;
  String? englishName;
  String? vietnameseName;
  String? frenchName;
  String? englishDescription;
  String? vietnameseDescription;
  String? frenchDescription;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;

  LocalCategoryData({
    this.id,
    this.categoryId,
    this.categoryKey,
    this.englishName,
    this.vietnameseName,
    this.frenchName,
    this.englishDescription,
    this.vietnameseDescription,
    this.frenchDescription,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        categoryId.hashCode ^
        categoryKey.hashCode ^
        englishName.hashCode ^
        vietnameseName.hashCode ^
        frenchName.hashCode ^
        englishDescription.hashCode ^
        vietnameseDescription.hashCode ^
        frenchDescription.hashCode ^
        imageUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalCategory(id: $id, categoryId: $categoryId, categoryKey: $categoryKey, englishName: $englishName, vietnameseName: $vietnameseName, frenchName: $frenchName, englishDescription: $englishDescription, vietnameseDescription: $vietnameseDescription, frenchDescription: $frenchDescription, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalCategoryData &&
        other.id == id &&
        other.categoryId == categoryId &&
        other.categoryKey == categoryKey &&
        other.englishName == englishName &&
        other.vietnameseName == vietnameseName &&
        other.frenchName == frenchName &&
        other.englishDescription == englishDescription &&
        other.vietnameseDescription == vietnameseDescription &&
        other.frenchDescription == frenchDescription &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
