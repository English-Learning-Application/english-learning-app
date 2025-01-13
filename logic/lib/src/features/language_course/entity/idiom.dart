import 'package:freezed_annotation/freezed_annotation.dart';

part 'idiom.freezed.dart';

@freezed
class Idiom with _$Idiom {
  const factory Idiom({
    @Default(Idiom.defaultIdiomId) String idiomId,
    @Default(Idiom.defaultEnglishIdiom) String englishIdiom,
    @Default(Idiom.defaultVietnameseIdiom) String vietnameseIdiom,
    @Default(Idiom.defaultFrenchIdiom) String frenchIdiom,
    @Default(Idiom.defaultEnglishIdiomMeaning) String englishIdiomMeaning,
    @Default(Idiom.defaultVietnameseIdiomMeaning) String vietnameseIdiomMeaning,
    @Default(Idiom.defaultFrenchIdiomMeaning) String frenchIdiomMeaning,
    @Default(Idiom.defaultExampleUsage) Map<String, dynamic> exampleUsage,
    @Default(Idiom.defaultCreatedAt) DateTime? createdAt,
    @Default(Idiom.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Idiom;

  static const defaultIdiomId = '';
  static const defaultEnglishIdiom = '';
  static const defaultVietnameseIdiom = '';
  static const defaultFrenchIdiom = '';
  static const defaultEnglishIdiomMeaning = '';
  static const defaultVietnameseIdiomMeaning = '';
  static const defaultFrenchIdiomMeaning = '';
  static const Map<String, dynamic> defaultExampleUsage = {};
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
