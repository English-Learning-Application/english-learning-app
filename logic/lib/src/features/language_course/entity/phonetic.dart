import 'package:freezed_annotation/freezed_annotation.dart';

part 'phonetic.freezed.dart';

@freezed
class Phonetic with _$Phonetic {
  const factory Phonetic({
    @Default(Phonetic.defaultPhoneticId) String phoneticId,
    @Default(Phonetic.defaultPhoneticSymbol) String phoneticSymbol,
    @Default(Phonetic.defaultPhoneticSound) String phoneticSound,
    @Default(Phonetic.defaultEnglishPhoneticGuide) String englishPhoneticGuide,
    @Default(Phonetic.defaultVietnamesePhoneticGuide)
    String vietnamesePhoneticGuide,
    @Default(Phonetic.defaultFrenchPhoneticGuide) String frenchPhoneticGuide,
    @Default(Phonetic.defaultExampleUsage) Map<String, dynamic> exampleUsage,
    @Default(Phonetic.defaultCreatedAt) DateTime? createdAt,
    @Default(Phonetic.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Phonetic;

  static const defaultPhoneticId = '';
  static const defaultPhoneticSymbol = '';
  static const defaultPhoneticSound = '';
  static const defaultEnglishPhoneticGuide = '';
  static const defaultVietnamesePhoneticGuide = '';
  static const defaultFrenchPhoneticGuide = '';
  static const Map<String, dynamic> defaultExampleUsage = {};
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
