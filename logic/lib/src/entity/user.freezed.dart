// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  String get customerNumber => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Country get countryCallingCode => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  Media get profileImg => throw _privateConstructorUsedError;
  String get facebookId => throw _privateConstructorUsedError;
  String get googleId => throw _privateConstructorUsedError;
  String get zaloId => throw _privateConstructorUsedError;
  UserInfo get userInfo => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String customerNumber,
      String phoneNumber,
      Country countryCallingCode,
      String emailAddress,
      String username,
      Media profileImg,
      String facebookId,
      String googleId,
      String zaloId,
      UserInfo userInfo});

  $CountryCopyWith<$Res> get countryCallingCode;
  $MediaCopyWith<$Res> get profileImg;
  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? phoneNumber = null,
    Object? countryCallingCode = null,
    Object? emailAddress = null,
    Object? username = null,
    Object? profileImg = null,
    Object? facebookId = null,
    Object? googleId = null,
    Object? zaloId = null,
    Object? userInfo = null,
  }) {
    return _then(_value.copyWith(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCallingCode: null == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as Country,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: null == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as Media,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      googleId: null == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String,
      zaloId: null == zaloId
          ? _value.zaloId
          : zaloId // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get countryCallingCode {
    return $CountryCopyWith<$Res>(_value.countryCallingCode, (value) {
      return _then(_value.copyWith(countryCallingCode: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res> get profileImg {
    return $MediaCopyWith<$Res>(_value.profileImg, (value) {
      return _then(_value.copyWith(profileImg: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get userInfo {
    return $UserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerNumber,
      String phoneNumber,
      Country countryCallingCode,
      String emailAddress,
      String username,
      Media profileImg,
      String facebookId,
      String googleId,
      String zaloId,
      UserInfo userInfo});

  @override
  $CountryCopyWith<$Res> get countryCallingCode;
  @override
  $MediaCopyWith<$Res> get profileImg;
  @override
  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? phoneNumber = null,
    Object? countryCallingCode = null,
    Object? emailAddress = null,
    Object? username = null,
    Object? profileImg = null,
    Object? facebookId = null,
    Object? googleId = null,
    Object? zaloId = null,
    Object? userInfo = null,
  }) {
    return _then(_$UserImpl(
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCallingCode: null == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as Country,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: null == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as Media,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      googleId: null == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String,
      zaloId: null == zaloId
          ? _value.zaloId
          : zaloId // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc

class _$UserImpl extends _User {
  const _$UserImpl(
      {this.customerNumber = User.defaultCustomerNumber,
      this.phoneNumber = User.defaultPhoneNumber,
      this.countryCallingCode = User.defaultCountryCallingCode,
      this.emailAddress = User.defaultEmailAddress,
      this.username = User.defaultUsername,
      this.profileImg = User.defaultProfileImg,
      this.facebookId = User.defaultFacebookId,
      this.googleId = User.defaultGoogleId,
      this.zaloId = User.defaultZaloId,
      this.userInfo = User.defaultUserInfo})
      : super._();

  @override
  @JsonKey()
  final String customerNumber;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final Country countryCallingCode;
  @override
  @JsonKey()
  final String emailAddress;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final Media profileImg;
  @override
  @JsonKey()
  final String facebookId;
  @override
  @JsonKey()
  final String googleId;
  @override
  @JsonKey()
  final String zaloId;
  @override
  @JsonKey()
  final UserInfo userInfo;

  @override
  String toString() {
    return 'User(customerNumber: $customerNumber, phoneNumber: $phoneNumber, countryCallingCode: $countryCallingCode, emailAddress: $emailAddress, username: $username, profileImg: $profileImg, facebookId: $facebookId, googleId: $googleId, zaloId: $zaloId, userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.countryCallingCode, countryCallingCode) ||
                other.countryCallingCode == countryCallingCode) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.zaloId, zaloId) || other.zaloId == zaloId) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerNumber,
      phoneNumber,
      countryCallingCode,
      emailAddress,
      username,
      profileImg,
      facebookId,
      googleId,
      zaloId,
      userInfo);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {final String customerNumber,
      final String phoneNumber,
      final Country countryCallingCode,
      final String emailAddress,
      final String username,
      final Media profileImg,
      final String facebookId,
      final String googleId,
      final String zaloId,
      final UserInfo userInfo}) = _$UserImpl;
  const _User._() : super._();

  @override
  String get customerNumber;
  @override
  String get phoneNumber;
  @override
  Country get countryCallingCode;
  @override
  String get emailAddress;
  @override
  String get username;
  @override
  Media get profileImg;
  @override
  String get facebookId;
  @override
  String get googleId;
  @override
  String get zaloId;
  @override
  UserInfo get userInfo;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserInfo {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Nationality get nationality => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      Gender gender,
      Nationality nationality,
      DateTime? birthday});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? nationality = null,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      Gender gender,
      Nationality nationality,
      DateTime? birthday});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? nationality = null,
    Object? birthday = freezed,
  }) {
    return _then(_$UserInfoImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$UserInfoImpl extends _UserInfo {
  const _$UserInfoImpl(
      {this.firstName = UserInfo.defaultFirstName,
      this.lastName = UserInfo.defaultLastName,
      this.gender = UserInfo.defaultGender,
      this.nationality = UserInfo.defaultNationality,
      this.birthday = UserInfo.defaultBirthday})
      : super._();

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final Gender gender;
  @override
  @JsonKey()
  final Nationality nationality;
  @override
  @JsonKey()
  final DateTime? birthday;

  @override
  String toString() {
    return 'UserInfo(firstName: $firstName, lastName: $lastName, gender: $gender, nationality: $nationality, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, gender, nationality, birthday);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);
}

abstract class _UserInfo extends UserInfo {
  const factory _UserInfo(
      {final String firstName,
      final String lastName,
      final Gender gender,
      final Nationality nationality,
      final DateTime? birthday}) = _$UserInfoImpl;
  const _UserInfo._() : super._();

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  Gender get gender;
  @override
  Nationality get nationality;
  @override
  DateTime? get birthday;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
