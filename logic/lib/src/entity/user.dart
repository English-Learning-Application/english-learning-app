import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @Default(User.defaultCustomerNumber) String customerNumber,
    @Default(User.defaultPhoneNumber) String phoneNumber,
    @Default(User.defaultCountryCallingCode) Country countryCallingCode,
    @Default(User.defaultEmailAddress) String emailAddress,
    @Default(User.defaultUsername) String username,
    @Default(User.defaultProfileImg) Media profileImg,
    @Default(User.defaultFacebookId) String facebookId,
    @Default(User.defaultGoogleId) String googleId,
    @Default(User.defaultZaloId) String zaloId,
    @Default(User.defaultUserInfo) UserInfo userInfo,
  }) = _User;

  static const defaultCustomerNumber = '';
  static const defaultPhoneNumber = '';
  static const defaultCountryCallingCode = Country.empty;
  static const defaultEmailAddress = '';
  static const defaultUsername = '';
  static const Media defaultProfileImg = Media.empty;
  static const defaultFacebookId = '';
  static const defaultGoogleId = '';
  static const defaultZaloId = '';
  static const UserInfo defaultUserInfo = UserInfo.empty;

  static const User empty = User();
}

@freezed
class UserInfo with _$UserInfo {
  const UserInfo._();
  const factory UserInfo({
    @Default(UserInfo.defaultFirstName) String firstName,
    @Default(UserInfo.defaultLastName) String lastName,
    @Default(UserInfo.defaultGender) Gender gender,
    @Default(UserInfo.defaultNationality) Nationality nationality,
    @Default(UserInfo.defaultBirthday) DateTime? birthday,
  }) = _UserInfo;

  static const defaultFirstName = '';
  static const defaultLastName = '';
  static const Gender defaultGender = Gender.defaultValue;
  static const Nationality defaultNationality = Nationality.vietnam;
  static const DateTime? defaultBirthday = null;

  static const UserInfo empty = UserInfo();
  String get fullName => '$firstName $lastName';
}
