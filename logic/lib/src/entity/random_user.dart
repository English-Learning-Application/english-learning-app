import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'random_user.freezed.dart';

@freezed
class RandomUser with _$RandomUser {
  const factory RandomUser({
    @Default(RandomUser.defaultId) String id,
    @Default(RandomUser.defaultName) RandomUserName name,
    @Default(RandomUser.defaultEmail) String email,
    @Default(RandomUser.defaultBirthday) DateTime? birthday,
    @Default(RandomUser.defaultGender) Gender gender,
    @Default(RandomUser.defaultNationality) String nationality,
  }) = _RandomUser;

  static const defaultId = '';
  static const defaultName = RandomUserName();
  static const defaultEmail = '';
  static const DateTime? defaultBirthday = null;
  static const defaultGender = Gender.defaultValue;
  static const defaultNationality = '';
}

@freezed
class RandomUserName with _$RandomUserName {
  const factory RandomUserName({
    @Default(RandomUserName.defaultFirstName) String firstName,
    @Default(RandomUserName.defaultLastName) String lastName,
    @Default(RandomUserName.defaultTitle) String title,
  }) = _RandomUserName;

  static const defaultFirstName = '';
  static const defaultLastName = '';
  static const defaultTitle = '';
}
