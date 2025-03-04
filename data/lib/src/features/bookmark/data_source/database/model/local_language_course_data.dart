import 'package:objectbox/objectbox.dart';

import 'local_course_learning_content_data.dart';

@Entity()
class LocalLanguageCourseData {
  @Id()
  int? id;
  String? learningLanguage;
  String? languageLevel;
  String? learningType;
  bool? requiredSubscription;
  String? createdAt;
  String? updatedAt;
  String? languageCourseId;

  final courseLearningContents = ToMany<LocalCourseLearningContentData>();

  LocalLanguageCourseData({
    this.id,
    this.learningLanguage,
    this.languageLevel,
    this.learningType,
    this.requiredSubscription,
    this.createdAt,
    this.updatedAt,
    this.languageCourseId,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        learningLanguage.hashCode ^
        languageLevel.hashCode ^
        learningType.hashCode ^
        requiredSubscription.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        courseLearningContents.hashCode;
  }

  @override
  String toString() {
    return "LocalLanguageCourseData(id: $id, learningLanguage: $learningLanguage, languageLevel: $languageLevel, learningType: $learningType, requiredSubscription: $requiredSubscription, createdAt: $createdAt, updatedAt: $updatedAt, courseLearningContents: $courseLearningContents)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalLanguageCourseData &&
        other.id == id &&
        other.learningLanguage == learningLanguage &&
        other.languageLevel == languageLevel &&
        other.learningType == learningType &&
        other.requiredSubscription == requiredSubscription &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.courseLearningContents == courseLearningContents;
  }
}
