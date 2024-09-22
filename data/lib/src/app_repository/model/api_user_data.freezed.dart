// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiUserData _$ApiUserDataFromJson(Map<String, dynamic> json) {
  return _ApiUserData.fromJson(json);
}

/// @nodoc
mixin _$ApiUserData {
  @JsonKey(name: 'customer_number')
  String? get customerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_calling_code')
  ApiCountryData? get countryCallingCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_address')
  String? get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_img')
  ApiMediaData? get profileImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'zalo_id')
  String? get zaloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_id')
  String? get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'google_id')
  String? get googleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_info')
  ApiUserInfoData? get userInfo => throw _privateConstructorUsedError;

  /// Serializes this ApiUserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiUserDataCopyWith<ApiUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserDataCopyWith<$Res> {
  factory $ApiUserDataCopyWith(
          ApiUserData value, $Res Function(ApiUserData) then) =
      _$ApiUserDataCopyWithImpl<$Res, ApiUserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_number') String? customerNumber,
      @JsonKey(name: 'country_calling_code') ApiCountryData? countryCallingCode,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'profile_img') ApiMediaData? profileImg,
      @JsonKey(name: 'zalo_id') String? zaloId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'google_id') String? googleId,
      @JsonKey(name: 'user_info') ApiUserInfoData? userInfo});

  $ApiCountryDataCopyWith<$Res>? get countryCallingCode;
  $ApiMediaDataCopyWith<$Res>? get profileImg;
  $ApiUserInfoDataCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$ApiUserDataCopyWithImpl<$Res, $Val extends ApiUserData>
    implements $ApiUserDataCopyWith<$Res> {
  _$ApiUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = freezed,
    Object? countryCallingCode = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? userName = freezed,
    Object? profileImg = freezed,
    Object? zaloId = freezed,
    Object? facebookId = freezed,
    Object? googleId = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      customerNumber: freezed == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCallingCode: freezed == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as ApiCountryData?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
      zaloId: freezed == zaloId
          ? _value.zaloId
          : zaloId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as ApiUserInfoData?,
    ) as $Val);
  }

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiCountryDataCopyWith<$Res>? get countryCallingCode {
    if (_value.countryCallingCode == null) {
      return null;
    }

    return $ApiCountryDataCopyWith<$Res>(_value.countryCallingCode!, (value) {
      return _then(_value.copyWith(countryCallingCode: value) as $Val);
    });
  }

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiMediaDataCopyWith<$Res>? get profileImg {
    if (_value.profileImg == null) {
      return null;
    }

    return $ApiMediaDataCopyWith<$Res>(_value.profileImg!, (value) {
      return _then(_value.copyWith(profileImg: value) as $Val);
    });
  }

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiUserInfoDataCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $ApiUserInfoDataCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiUserDataImplCopyWith<$Res>
    implements $ApiUserDataCopyWith<$Res> {
  factory _$$ApiUserDataImplCopyWith(
          _$ApiUserDataImpl value, $Res Function(_$ApiUserDataImpl) then) =
      __$$ApiUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_number') String? customerNumber,
      @JsonKey(name: 'country_calling_code') ApiCountryData? countryCallingCode,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'profile_img') ApiMediaData? profileImg,
      @JsonKey(name: 'zalo_id') String? zaloId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'google_id') String? googleId,
      @JsonKey(name: 'user_info') ApiUserInfoData? userInfo});

  @override
  $ApiCountryDataCopyWith<$Res>? get countryCallingCode;
  @override
  $ApiMediaDataCopyWith<$Res>? get profileImg;
  @override
  $ApiUserInfoDataCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$ApiUserDataImplCopyWithImpl<$Res>
    extends _$ApiUserDataCopyWithImpl<$Res, _$ApiUserDataImpl>
    implements _$$ApiUserDataImplCopyWith<$Res> {
  __$$ApiUserDataImplCopyWithImpl(
      _$ApiUserDataImpl _value, $Res Function(_$ApiUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = freezed,
    Object? countryCallingCode = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? userName = freezed,
    Object? profileImg = freezed,
    Object? zaloId = freezed,
    Object? facebookId = freezed,
    Object? googleId = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_$ApiUserDataImpl(
      customerNumber: freezed == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCallingCode: freezed == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as ApiCountryData?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
      zaloId: freezed == zaloId
          ? _value.zaloId
          : zaloId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as ApiUserInfoData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiUserDataImpl implements _ApiUserData {
  const _$ApiUserDataImpl(
      {@JsonKey(name: 'customer_number') this.customerNumber,
      @JsonKey(name: 'country_calling_code') this.countryCallingCode,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'email_address') this.emailAddress,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'profile_img') this.profileImg,
      @JsonKey(name: 'zalo_id') this.zaloId,
      @JsonKey(name: 'facebook_id') this.facebookId,
      @JsonKey(name: 'google_id') this.googleId,
      @JsonKey(name: 'user_info') this.userInfo});

  factory _$ApiUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserDataImplFromJson(json);

  @override
  @JsonKey(name: 'customer_number')
  final String? customerNumber;
  @override
  @JsonKey(name: 'country_calling_code')
  final ApiCountryData? countryCallingCode;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'email_address')
  final String? emailAddress;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'profile_img')
  final ApiMediaData? profileImg;
  @override
  @JsonKey(name: 'zalo_id')
  final String? zaloId;
  @override
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @override
  @JsonKey(name: 'google_id')
  final String? googleId;
  @override
  @JsonKey(name: 'user_info')
  final ApiUserInfoData? userInfo;

  @override
  String toString() {
    return 'ApiUserData(customerNumber: $customerNumber, countryCallingCode: $countryCallingCode, phoneNumber: $phoneNumber, emailAddress: $emailAddress, userName: $userName, profileImg: $profileImg, zaloId: $zaloId, facebookId: $facebookId, googleId: $googleId, userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserDataImpl &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.countryCallingCode, countryCallingCode) ||
                other.countryCallingCode == countryCallingCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.zaloId, zaloId) || other.zaloId == zaloId) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerNumber,
      countryCallingCode,
      phoneNumber,
      emailAddress,
      userName,
      profileImg,
      zaloId,
      facebookId,
      googleId,
      userInfo);

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserDataImplCopyWith<_$ApiUserDataImpl> get copyWith =>
      __$$ApiUserDataImplCopyWithImpl<_$ApiUserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserDataImplToJson(
      this,
    );
  }
}

abstract class _ApiUserData implements ApiUserData {
  const factory _ApiUserData(
          {@JsonKey(name: 'customer_number') final String? customerNumber,
          @JsonKey(name: 'country_calling_code')
          final ApiCountryData? countryCallingCode,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'email_address') final String? emailAddress,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'profile_img') final ApiMediaData? profileImg,
          @JsonKey(name: 'zalo_id') final String? zaloId,
          @JsonKey(name: 'facebook_id') final String? facebookId,
          @JsonKey(name: 'google_id') final String? googleId,
          @JsonKey(name: 'user_info') final ApiUserInfoData? userInfo}) =
      _$ApiUserDataImpl;

  factory _ApiUserData.fromJson(Map<String, dynamic> json) =
      _$ApiUserDataImpl.fromJson;

  @override
  @JsonKey(name: 'customer_number')
  String? get customerNumber;
  @override
  @JsonKey(name: 'country_calling_code')
  ApiCountryData? get countryCallingCode;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'email_address')
  String? get emailAddress;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'profile_img')
  ApiMediaData? get profileImg;
  @override
  @JsonKey(name: 'zalo_id')
  String? get zaloId;
  @override
  @JsonKey(name: 'facebook_id')
  String? get facebookId;
  @override
  @JsonKey(name: 'google_id')
  String? get googleId;
  @override
  @JsonKey(name: 'user_info')
  ApiUserInfoData? get userInfo;

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserDataImplCopyWith<_$ApiUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiUserInfoData _$ApiUserInfoDataFromJson(Map<String, dynamic> json) {
  return _ApiUserInfoData.fromJson(json);
}

/// @nodoc
mixin _$ApiUserInfoData {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'register_method')
  String? get registerMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality')
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_kol')
  bool? get isKol => throw _privateConstructorUsedError;

  /// Serializes this ApiUserInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiUserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiUserInfoDataCopyWith<ApiUserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserInfoDataCopyWith<$Res> {
  factory $ApiUserInfoDataCopyWith(
          ApiUserInfoData value, $Res Function(ApiUserInfoData) then) =
      _$ApiUserInfoDataCopyWithImpl<$Res, ApiUserInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'register_method') String? registerMethod,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'is_kol') bool? isKol});
}

/// @nodoc
class _$ApiUserInfoDataCopyWithImpl<$Res, $Val extends ApiUserInfoData>
    implements $ApiUserInfoDataCopyWith<$Res> {
  _$ApiUserInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiUserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? registerMethod = freezed,
    Object? nationality = freezed,
    Object? birthday = freezed,
    Object? isKol = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMethod: freezed == registerMethod
          ? _value.registerMethod
          : registerMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isKol: freezed == isKol
          ? _value.isKol
          : isKol // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUserInfoDataImplCopyWith<$Res>
    implements $ApiUserInfoDataCopyWith<$Res> {
  factory _$$ApiUserInfoDataImplCopyWith(_$ApiUserInfoDataImpl value,
          $Res Function(_$ApiUserInfoDataImpl) then) =
      __$$ApiUserInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'register_method') String? registerMethod,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'is_kol') bool? isKol});
}

/// @nodoc
class __$$ApiUserInfoDataImplCopyWithImpl<$Res>
    extends _$ApiUserInfoDataCopyWithImpl<$Res, _$ApiUserInfoDataImpl>
    implements _$$ApiUserInfoDataImplCopyWith<$Res> {
  __$$ApiUserInfoDataImplCopyWithImpl(
      _$ApiUserInfoDataImpl _value, $Res Function(_$ApiUserInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiUserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? registerMethod = freezed,
    Object? nationality = freezed,
    Object? birthday = freezed,
    Object? isKol = freezed,
  }) {
    return _then(_$ApiUserInfoDataImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMethod: freezed == registerMethod
          ? _value.registerMethod
          : registerMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isKol: freezed == isKol
          ? _value.isKol
          : isKol // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiUserInfoDataImpl implements _ApiUserInfoData {
  const _$ApiUserInfoDataImpl(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'register_method') this.registerMethod,
      @JsonKey(name: 'nationality') this.nationality,
      @JsonKey(name: 'birthday') this.birthday,
      @JsonKey(name: 'is_kol') this.isKol});

  factory _$ApiUserInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserInfoDataImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'register_method')
  final String? registerMethod;
  @override
  @JsonKey(name: 'nationality')
  final String? nationality;
  @override
  @JsonKey(name: 'birthday')
  final String? birthday;
  @override
  @JsonKey(name: 'is_kol')
  final bool? isKol;

  @override
  String toString() {
    return 'ApiUserInfoData(firstName: $firstName, lastName: $lastName, gender: $gender, registerMethod: $registerMethod, nationality: $nationality, birthday: $birthday, isKol: $isKol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserInfoDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.registerMethod, registerMethod) ||
                other.registerMethod == registerMethod) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.isKol, isKol) || other.isKol == isKol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, gender,
      registerMethod, nationality, birthday, isKol);

  /// Create a copy of ApiUserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserInfoDataImplCopyWith<_$ApiUserInfoDataImpl> get copyWith =>
      __$$ApiUserInfoDataImplCopyWithImpl<_$ApiUserInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserInfoDataImplToJson(
      this,
    );
  }
}

abstract class _ApiUserInfoData implements ApiUserInfoData {
  const factory _ApiUserInfoData(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'register_method') final String? registerMethod,
      @JsonKey(name: 'nationality') final String? nationality,
      @JsonKey(name: 'birthday') final String? birthday,
      @JsonKey(name: 'is_kol') final bool? isKol}) = _$ApiUserInfoDataImpl;

  factory _ApiUserInfoData.fromJson(Map<String, dynamic> json) =
      _$ApiUserInfoDataImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'register_method')
  String? get registerMethod;
  @override
  @JsonKey(name: 'nationality')
  String? get nationality;
  @override
  @JsonKey(name: 'birthday')
  String? get birthday;
  @override
  @JsonKey(name: 'is_kol')
  bool? get isKol;

  /// Create a copy of ApiUserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserInfoDataImplCopyWith<_$ApiUserInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
