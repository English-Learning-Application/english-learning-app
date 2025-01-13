import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrasal_verb.freezed.dart';

@freezed
class PhrasalVerb with _$PhrasalVerb {
  const factory PhrasalVerb({
    @Default(PhrasalVerb.defaultPhrasalVerbId) String phrasalVerbId,
    @Default(PhrasalVerb.defaultEnglishPhrasalVerb) String englishPhrasalVerb,
    @Default(PhrasalVerb.defaultVietnamesePhrasalVerb)
    String vietnamesePhrasalVerb,
    @Default(PhrasalVerb.defaultFrenchPhrasalVerb) String frenchPhrasalVerb,
    @Default(PhrasalVerb.defaultEnglishDescription) String englishDescription,
    @Default(PhrasalVerb.defaultVietnameseDescription)
    String vietnameseDescription,
    @Default(PhrasalVerb.defaultFrenchDescription) String frenchDescription,
    @Default(PhrasalVerb.defaultExampleUsage) Map<String, dynamic> exampleUsage,
    @Default(PhrasalVerb.defaultCreatedAt) DateTime? createdAt,
    @Default(PhrasalVerb.defaultUpdatedAt) DateTime? updatedAt,
  }) = _PhrasalVerb;

  static const defaultPhrasalVerbId = '';
  static const defaultEnglishPhrasalVerb = '';
  static const defaultVietnamesePhrasalVerb = '';
  static const defaultFrenchPhrasalVerb = '';
  static const defaultEnglishDescription = '';
  static const defaultVietnameseDescription = '';
  static const defaultFrenchDescription = '';
  static const Map<String, dynamic> defaultExampleUsage = {};
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
