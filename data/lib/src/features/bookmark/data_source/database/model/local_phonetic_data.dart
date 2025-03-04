import 'package:objectbox/objectbox.dart';

@Entity()
class LocalPhoneticData {
  @Id()
  int? id;
  String? phoneticId;
  String? phoneticSymbol;
  String? phoneticSound;
  String? englishPhoneticGuide;
  String? vietnamesePhoneticGuide;
  String? frenchPhoneticGuide;
  String? exampleUsage;
  String? createdAt;
  String? updatedAt;

  LocalPhoneticData({
    this.id,
    this.phoneticId,
    this.phoneticSymbol,
    this.phoneticSound,
    this.englishPhoneticGuide,
    this.vietnamesePhoneticGuide,
    this.frenchPhoneticGuide,
    this.exampleUsage,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        phoneticId.hashCode ^
        phoneticSymbol.hashCode ^
        phoneticSound.hashCode ^
        englishPhoneticGuide.hashCode ^
        vietnamesePhoneticGuide.hashCode ^
        frenchPhoneticGuide.hashCode ^
        exampleUsage.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "PhoneticLocalData(id: $id, phoneticId: $phoneticId, phoneticSymbol: $phoneticSymbol, phoneticSound: $phoneticSound, englishPhoneticGuide: $englishPhoneticGuide, vietnamesePhoneticGuide: $vietnamesePhoneticGuide, frenchPhoneticGuide: $frenchPhoneticGuide, exampleUsage: $exampleUsage, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalPhoneticData &&
        other.id == id &&
        other.phoneticId == phoneticId &&
        other.phoneticSymbol == phoneticSymbol &&
        other.phoneticSound == phoneticSound &&
        other.englishPhoneticGuide == englishPhoneticGuide &&
        other.vietnamesePhoneticGuide == vietnamesePhoneticGuide &&
        other.frenchPhoneticGuide == frenchPhoneticGuide &&
        other.exampleUsage == exampleUsage &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
