import 'package:objectbox/objectbox.dart';

import 'local_image_url_data.dart';

@Entity()
class LocalUserData {
  @Id()
  int? id;
  String? email;
  String? money;
  String? gender;
  int? birthday;

  final avatar = ToOne<LocalImageUrlData>();
  final photos = ToMany<LocalImageUrlData>();

  LocalUserData({
    this.email,
    this.money,
    this.gender,
    this.birthday,
  });

  @override
  int get hashCode =>
      id.hashCode ^
      email.hashCode ^
      money.hashCode ^
      gender.hashCode ^
      birthday.hashCode;

  @override
  toString() {
    return 'LocalUserData{id: $id, email: $email, money: $money, gender: $gender, birthday: $birthday}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is LocalUserData &&
        other.id == id &&
        other.email == email &&
        other.money == money &&
        other.gender == gender &&
        other.birthday == birthday;
  }
}
