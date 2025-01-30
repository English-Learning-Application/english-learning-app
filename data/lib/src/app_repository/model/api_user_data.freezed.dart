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
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'googleId')
  String? get googleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebookId')
  String? get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'isEmailVerified')
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPhoneNumberVerified')
  bool? get isPhoneNumberVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  ApiMediaData? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'userProfile')
  ApiUserProfileData? get userProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'registrationStatus')
  String? get registrationStatus => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'googleId') String? googleId,
      @JsonKey(name: 'facebookId') String? facebookId,
      @JsonKey(name: 'phoneNumber') String? phone,
      @JsonKey(name: 'isEmailVerified') bool? isEmailVerified,
      @JsonKey(name: 'isPhoneNumberVerified') bool? isPhoneNumberVerified,
      @JsonKey(name: 'media') ApiMediaData? media,
      @JsonKey(name: 'userProfile') ApiUserProfileData? userProfile,
      @JsonKey(name: 'registrationStatus') String? registrationStatus});

  $ApiMediaDataCopyWith<$Res>? get media;
  $ApiUserProfileDataCopyWith<$Res>? get userProfile;
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
    Object? userId = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? googleId = freezed,
    Object? facebookId = freezed,
    Object? phone = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneNumberVerified = freezed,
    Object? media = freezed,
    Object? userProfile = freezed,
    Object? registrationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneNumberVerified: freezed == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ApiUserProfileData?,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiMediaDataCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $ApiMediaDataCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiUserProfileDataCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $ApiUserProfileDataCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
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
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'googleId') String? googleId,
      @JsonKey(name: 'facebookId') String? facebookId,
      @JsonKey(name: 'phoneNumber') String? phone,
      @JsonKey(name: 'isEmailVerified') bool? isEmailVerified,
      @JsonKey(name: 'isPhoneNumberVerified') bool? isPhoneNumberVerified,
      @JsonKey(name: 'media') ApiMediaData? media,
      @JsonKey(name: 'userProfile') ApiUserProfileData? userProfile,
      @JsonKey(name: 'registrationStatus') String? registrationStatus});

  @override
  $ApiMediaDataCopyWith<$Res>? get media;
  @override
  $ApiUserProfileDataCopyWith<$Res>? get userProfile;
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
    Object? userId = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? googleId = freezed,
    Object? facebookId = freezed,
    Object? phone = freezed,
    Object? isEmailVerified = freezed,
    Object? isPhoneNumberVerified = freezed,
    Object? media = freezed,
    Object? userProfile = freezed,
    Object? registrationStatus = freezed,
  }) {
    return _then(_$ApiUserDataImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneNumberVerified: freezed == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ApiUserProfileData?,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiUserDataImpl implements _ApiUserData {
  const _$ApiUserDataImpl(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'googleId') this.googleId,
      @JsonKey(name: 'facebookId') this.facebookId,
      @JsonKey(name: 'phoneNumber') this.phone,
      @JsonKey(name: 'isEmailVerified') this.isEmailVerified,
      @JsonKey(name: 'isPhoneNumberVerified') this.isPhoneNumberVerified,
      @JsonKey(name: 'media') this.media,
      @JsonKey(name: 'userProfile') this.userProfile,
      @JsonKey(name: 'registrationStatus') this.registrationStatus});

  factory _$ApiUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserDataImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'googleId')
  final String? googleId;
  @override
  @JsonKey(name: 'facebookId')
  final String? facebookId;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phone;
  @override
  @JsonKey(name: 'isEmailVerified')
  final bool? isEmailVerified;
  @override
  @JsonKey(name: 'isPhoneNumberVerified')
  final bool? isPhoneNumberVerified;
  @override
  @JsonKey(name: 'media')
  final ApiMediaData? media;
  @override
  @JsonKey(name: 'userProfile')
  final ApiUserProfileData? userProfile;
  @override
  @JsonKey(name: 'registrationStatus')
  final String? registrationStatus;

  @override
  String toString() {
    return 'ApiUserData(userId: $userId, email: $email, username: $username, googleId: $googleId, facebookId: $facebookId, phone: $phone, isEmailVerified: $isEmailVerified, isPhoneNumberVerified: $isPhoneNumberVerified, media: $media, userProfile: $userProfile, registrationStatus: $registrationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isPhoneNumberVerified, isPhoneNumberVerified) ||
                other.isPhoneNumberVerified == isPhoneNumberVerified) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.registrationStatus, registrationStatus) ||
                other.registrationStatus == registrationStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      username,
      googleId,
      facebookId,
      phone,
      isEmailVerified,
      isPhoneNumberVerified,
      media,
      userProfile,
      registrationStatus);

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
      {@JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'googleId') final String? googleId,
      @JsonKey(name: 'facebookId') final String? facebookId,
      @JsonKey(name: 'phoneNumber') final String? phone,
      @JsonKey(name: 'isEmailVerified') final bool? isEmailVerified,
      @JsonKey(name: 'isPhoneNumberVerified') final bool? isPhoneNumberVerified,
      @JsonKey(name: 'media') final ApiMediaData? media,
      @JsonKey(name: 'userProfile') final ApiUserProfileData? userProfile,
      @JsonKey(name: 'registrationStatus')
      final String? registrationStatus}) = _$ApiUserDataImpl;

  factory _ApiUserData.fromJson(Map<String, dynamic> json) =
      _$ApiUserDataImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'googleId')
  String? get googleId;
  @override
  @JsonKey(name: 'facebookId')
  String? get facebookId;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phone;
  @override
  @JsonKey(name: 'isEmailVerified')
  bool? get isEmailVerified;
  @override
  @JsonKey(name: 'isPhoneNumberVerified')
  bool? get isPhoneNumberVerified;
  @override
  @JsonKey(name: 'media')
  ApiMediaData? get media;
  @override
  @JsonKey(name: 'userProfile')
  ApiUserProfileData? get userProfile;
  @override
  @JsonKey(name: 'registrationStatus')
  String? get registrationStatus;

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserDataImplCopyWith<_$ApiUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiUserProfileData _$ApiUserProfileDataFromJson(Map<String, dynamic> json) {
  return _ApiUserProfileData.fromJson(json);
}

/// @nodoc
mixin _$ApiUserProfileData {
  @JsonKey(name: 'userProfileId')
  String? get userProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nativeLanguage')
  String? get nativeLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'learningLanguage')
  String? get learningLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'learningTypeOne')
  String? get learningTypeOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'learningTypeTwo')
  String? get learningTypeTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'learningTypeThree')
  String? get learningTypeThree => throw _privateConstructorUsedError;

  /// Serializes this ApiUserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiUserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiUserProfileDataCopyWith<ApiUserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserProfileDataCopyWith<$Res> {
  factory $ApiUserProfileDataCopyWith(
          ApiUserProfileData value, $Res Function(ApiUserProfileData) then) =
      _$ApiUserProfileDataCopyWithImpl<$Res, ApiUserProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userProfileId') String? userProfileId,
      @JsonKey(name: 'nativeLanguage') String? nativeLanguage,
      @JsonKey(name: 'learningLanguage') String? learningLanguage,
      @JsonKey(name: 'learningTypeOne') String? learningTypeOne,
      @JsonKey(name: 'learningTypeTwo') String? learningTypeTwo,
      @JsonKey(name: 'learningTypeThree') String? learningTypeThree});
}

/// @nodoc
class _$ApiUserProfileDataCopyWithImpl<$Res, $Val extends ApiUserProfileData>
    implements $ApiUserProfileDataCopyWith<$Res> {
  _$ApiUserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiUserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileId = freezed,
    Object? nativeLanguage = freezed,
    Object? learningLanguage = freezed,
    Object? learningTypeOne = freezed,
    Object? learningTypeTwo = freezed,
    Object? learningTypeThree = freezed,
  }) {
    return _then(_value.copyWith(
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      learningLanguage: freezed == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeOne: freezed == learningTypeOne
          ? _value.learningTypeOne
          : learningTypeOne // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeTwo: freezed == learningTypeTwo
          ? _value.learningTypeTwo
          : learningTypeTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeThree: freezed == learningTypeThree
          ? _value.learningTypeThree
          : learningTypeThree // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiUserProfileDataImplCopyWith<$Res>
    implements $ApiUserProfileDataCopyWith<$Res> {
  factory _$$ApiUserProfileDataImplCopyWith(_$ApiUserProfileDataImpl value,
          $Res Function(_$ApiUserProfileDataImpl) then) =
      __$$ApiUserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userProfileId') String? userProfileId,
      @JsonKey(name: 'nativeLanguage') String? nativeLanguage,
      @JsonKey(name: 'learningLanguage') String? learningLanguage,
      @JsonKey(name: 'learningTypeOne') String? learningTypeOne,
      @JsonKey(name: 'learningTypeTwo') String? learningTypeTwo,
      @JsonKey(name: 'learningTypeThree') String? learningTypeThree});
}

/// @nodoc
class __$$ApiUserProfileDataImplCopyWithImpl<$Res>
    extends _$ApiUserProfileDataCopyWithImpl<$Res, _$ApiUserProfileDataImpl>
    implements _$$ApiUserProfileDataImplCopyWith<$Res> {
  __$$ApiUserProfileDataImplCopyWithImpl(_$ApiUserProfileDataImpl _value,
      $Res Function(_$ApiUserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiUserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileId = freezed,
    Object? nativeLanguage = freezed,
    Object? learningLanguage = freezed,
    Object? learningTypeOne = freezed,
    Object? learningTypeTwo = freezed,
    Object? learningTypeThree = freezed,
  }) {
    return _then(_$ApiUserProfileDataImpl(
      userProfileId: freezed == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      learningLanguage: freezed == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeOne: freezed == learningTypeOne
          ? _value.learningTypeOne
          : learningTypeOne // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeTwo: freezed == learningTypeTwo
          ? _value.learningTypeTwo
          : learningTypeTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      learningTypeThree: freezed == learningTypeThree
          ? _value.learningTypeThree
          : learningTypeThree // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiUserProfileDataImpl implements _ApiUserProfileData {
  const _$ApiUserProfileDataImpl(
      {@JsonKey(name: 'userProfileId') this.userProfileId,
      @JsonKey(name: 'nativeLanguage') this.nativeLanguage,
      @JsonKey(name: 'learningLanguage') this.learningLanguage,
      @JsonKey(name: 'learningTypeOne') this.learningTypeOne,
      @JsonKey(name: 'learningTypeTwo') this.learningTypeTwo,
      @JsonKey(name: 'learningTypeThree') this.learningTypeThree});

  factory _$ApiUserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserProfileDataImplFromJson(json);

  @override
  @JsonKey(name: 'userProfileId')
  final String? userProfileId;
  @override
  @JsonKey(name: 'nativeLanguage')
  final String? nativeLanguage;
  @override
  @JsonKey(name: 'learningLanguage')
  final String? learningLanguage;
  @override
  @JsonKey(name: 'learningTypeOne')
  final String? learningTypeOne;
  @override
  @JsonKey(name: 'learningTypeTwo')
  final String? learningTypeTwo;
  @override
  @JsonKey(name: 'learningTypeThree')
  final String? learningTypeThree;

  @override
  String toString() {
    return 'ApiUserProfileData(userProfileId: $userProfileId, nativeLanguage: $nativeLanguage, learningLanguage: $learningLanguage, learningTypeOne: $learningTypeOne, learningTypeTwo: $learningTypeTwo, learningTypeThree: $learningTypeThree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserProfileDataImpl &&
            (identical(other.userProfileId, userProfileId) ||
                other.userProfileId == userProfileId) &&
            (identical(other.nativeLanguage, nativeLanguage) ||
                other.nativeLanguage == nativeLanguage) &&
            (identical(other.learningLanguage, learningLanguage) ||
                other.learningLanguage == learningLanguage) &&
            (identical(other.learningTypeOne, learningTypeOne) ||
                other.learningTypeOne == learningTypeOne) &&
            (identical(other.learningTypeTwo, learningTypeTwo) ||
                other.learningTypeTwo == learningTypeTwo) &&
            (identical(other.learningTypeThree, learningTypeThree) ||
                other.learningTypeThree == learningTypeThree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userProfileId, nativeLanguage,
      learningLanguage, learningTypeOne, learningTypeTwo, learningTypeThree);

  /// Create a copy of ApiUserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserProfileDataImplCopyWith<_$ApiUserProfileDataImpl> get copyWith =>
      __$$ApiUserProfileDataImplCopyWithImpl<_$ApiUserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ApiUserProfileData implements ApiUserProfileData {
  const factory _ApiUserProfileData(
      {@JsonKey(name: 'userProfileId') final String? userProfileId,
      @JsonKey(name: 'nativeLanguage') final String? nativeLanguage,
      @JsonKey(name: 'learningLanguage') final String? learningLanguage,
      @JsonKey(name: 'learningTypeOne') final String? learningTypeOne,
      @JsonKey(name: 'learningTypeTwo') final String? learningTypeTwo,
      @JsonKey(name: 'learningTypeThree')
      final String? learningTypeThree}) = _$ApiUserProfileDataImpl;

  factory _ApiUserProfileData.fromJson(Map<String, dynamic> json) =
      _$ApiUserProfileDataImpl.fromJson;

  @override
  @JsonKey(name: 'userProfileId')
  String? get userProfileId;
  @override
  @JsonKey(name: 'nativeLanguage')
  String? get nativeLanguage;
  @override
  @JsonKey(name: 'learningLanguage')
  String? get learningLanguage;
  @override
  @JsonKey(name: 'learningTypeOne')
  String? get learningTypeOne;
  @override
  @JsonKey(name: 'learningTypeTwo')
  String? get learningTypeTwo;
  @override
  @JsonKey(name: 'learningTypeThree')
  String? get learningTypeThree;

  /// Create a copy of ApiUserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserProfileDataImplCopyWith<_$ApiUserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
