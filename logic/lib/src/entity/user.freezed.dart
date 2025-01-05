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
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get googleId => throw _privateConstructorUsedError;
  String get facebookId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Media get media => throw _privateConstructorUsedError;
  UserProfile get userProfile => throw _privateConstructorUsedError;
  RegistrationStatus get registrationStatus =>
      throw _privateConstructorUsedError;

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
      {String userId,
      String email,
      String username,
      String googleId,
      String facebookId,
      String phoneNumber,
      Media media,
      UserProfile userProfile,
      RegistrationStatus registrationStatus});

  $MediaCopyWith<$Res> get media;
  $UserProfileCopyWith<$Res> get userProfile;
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
    Object? userId = null,
    Object? email = null,
    Object? username = null,
    Object? googleId = null,
    Object? facebookId = null,
    Object? phoneNumber = null,
    Object? media = null,
    Object? userProfile = null,
    Object? registrationStatus = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      googleId: null == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      registrationStatus: null == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as RegistrationStatus,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res> get media {
    return $MediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get userProfile {
    return $UserProfileCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
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
      {String userId,
      String email,
      String username,
      String googleId,
      String facebookId,
      String phoneNumber,
      Media media,
      UserProfile userProfile,
      RegistrationStatus registrationStatus});

  @override
  $MediaCopyWith<$Res> get media;
  @override
  $UserProfileCopyWith<$Res> get userProfile;
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
    Object? userId = null,
    Object? email = null,
    Object? username = null,
    Object? googleId = null,
    Object? facebookId = null,
    Object? phoneNumber = null,
    Object? media = null,
    Object? userProfile = null,
    Object? registrationStatus = null,
  }) {
    return _then(_$UserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      googleId: null == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      registrationStatus: null == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as RegistrationStatus,
    ));
  }
}

/// @nodoc

class _$UserImpl extends _User {
  const _$UserImpl(
      {this.userId = User.defaultUserId,
      this.email = User.defaultEmail,
      this.username = User.defaultUsername,
      this.googleId = User.defaultGoogleId,
      this.facebookId = User.defaultFacebookId,
      this.phoneNumber = User.defaultPhoneNumber,
      this.media = User.defaultMedia,
      this.userProfile = User.defaultUserProfile,
      this.registrationStatus = User.defaultRegistrationStatus})
      : super._();

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String googleId;
  @override
  @JsonKey()
  final String facebookId;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final Media media;
  @override
  @JsonKey()
  final UserProfile userProfile;
  @override
  @JsonKey()
  final RegistrationStatus registrationStatus;

  @override
  String toString() {
    return 'User(userId: $userId, email: $email, username: $username, googleId: $googleId, facebookId: $facebookId, phoneNumber: $phoneNumber, media: $media, userProfile: $userProfile, registrationStatus: $registrationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.registrationStatus, registrationStatus) ||
                other.registrationStatus == registrationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      username,
      googleId,
      facebookId,
      phoneNumber,
      media,
      userProfile,
      registrationStatus);

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
      {final String userId,
      final String email,
      final String username,
      final String googleId,
      final String facebookId,
      final String phoneNumber,
      final Media media,
      final UserProfile userProfile,
      final RegistrationStatus registrationStatus}) = _$UserImpl;
  const _User._() : super._();

  @override
  String get userId;
  @override
  String get email;
  @override
  String get username;
  @override
  String get googleId;
  @override
  String get facebookId;
  @override
  String get phoneNumber;
  @override
  Media get media;
  @override
  UserProfile get userProfile;
  @override
  RegistrationStatus get registrationStatus;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfile {
  String get userProfileId => throw _privateConstructorUsedError;
  LearningLanguage get nativeLanguage => throw _privateConstructorUsedError;
  LearningLanguage get learningLanguage => throw _privateConstructorUsedError;
  LearningType? get learningTypeOne => throw _privateConstructorUsedError;
  LearningType? get learningTypeTwo => throw _privateConstructorUsedError;
  LearningType? get learningTypeThree => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String userProfileId,
      LearningLanguage nativeLanguage,
      LearningLanguage learningLanguage,
      LearningType? learningTypeOne,
      LearningType? learningTypeTwo,
      LearningType? learningTypeThree});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileId = null,
    Object? nativeLanguage = null,
    Object? learningLanguage = null,
    Object? learningTypeOne = freezed,
    Object? learningTypeTwo = freezed,
    Object? learningTypeThree = freezed,
  }) {
    return _then(_value.copyWith(
      userProfileId: null == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      nativeLanguage: null == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as LearningLanguage,
      learningLanguage: null == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as LearningLanguage,
      learningTypeOne: freezed == learningTypeOne
          ? _value.learningTypeOne
          : learningTypeOne // ignore: cast_nullable_to_non_nullable
              as LearningType?,
      learningTypeTwo: freezed == learningTypeTwo
          ? _value.learningTypeTwo
          : learningTypeTwo // ignore: cast_nullable_to_non_nullable
              as LearningType?,
      learningTypeThree: freezed == learningTypeThree
          ? _value.learningTypeThree
          : learningTypeThree // ignore: cast_nullable_to_non_nullable
              as LearningType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userProfileId,
      LearningLanguage nativeLanguage,
      LearningLanguage learningLanguage,
      LearningType? learningTypeOne,
      LearningType? learningTypeTwo,
      LearningType? learningTypeThree});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileId = null,
    Object? nativeLanguage = null,
    Object? learningLanguage = null,
    Object? learningTypeOne = freezed,
    Object? learningTypeTwo = freezed,
    Object? learningTypeThree = freezed,
  }) {
    return _then(_$UserProfileImpl(
      userProfileId: null == userProfileId
          ? _value.userProfileId
          : userProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      nativeLanguage: null == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as LearningLanguage,
      learningLanguage: null == learningLanguage
          ? _value.learningLanguage
          : learningLanguage // ignore: cast_nullable_to_non_nullable
              as LearningLanguage,
      learningTypeOne: freezed == learningTypeOne
          ? _value.learningTypeOne
          : learningTypeOne // ignore: cast_nullable_to_non_nullable
              as LearningType?,
      learningTypeTwo: freezed == learningTypeTwo
          ? _value.learningTypeTwo
          : learningTypeTwo // ignore: cast_nullable_to_non_nullable
              as LearningType?,
      learningTypeThree: freezed == learningTypeThree
          ? _value.learningTypeThree
          : learningTypeThree // ignore: cast_nullable_to_non_nullable
              as LearningType?,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl extends _UserProfile {
  const _$UserProfileImpl(
      {this.userProfileId = UserProfile.defaultUserProfileId,
      this.nativeLanguage = UserProfile.defaultNativeLanguage,
      this.learningLanguage = UserProfile.defaultLearningLanguage,
      this.learningTypeOne = UserProfile.defaultLearningTypeOne,
      this.learningTypeTwo = UserProfile.defaultLearningTypeTwo,
      this.learningTypeThree = UserProfile.defaultLearningTypeThree})
      : super._();

  @override
  @JsonKey()
  final String userProfileId;
  @override
  @JsonKey()
  final LearningLanguage nativeLanguage;
  @override
  @JsonKey()
  final LearningLanguage learningLanguage;
  @override
  @JsonKey()
  final LearningType? learningTypeOne;
  @override
  @JsonKey()
  final LearningType? learningTypeTwo;
  @override
  @JsonKey()
  final LearningType? learningTypeThree;

  @override
  String toString() {
    return 'UserProfile(userProfileId: $userProfileId, nativeLanguage: $nativeLanguage, learningLanguage: $learningLanguage, learningTypeOne: $learningTypeOne, learningTypeTwo: $learningTypeTwo, learningTypeThree: $learningTypeThree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, userProfileId, nativeLanguage,
      learningLanguage, learningTypeOne, learningTypeTwo, learningTypeThree);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile extends UserProfile {
  const factory _UserProfile(
      {final String userProfileId,
      final LearningLanguage nativeLanguage,
      final LearningLanguage learningLanguage,
      final LearningType? learningTypeOne,
      final LearningType? learningTypeTwo,
      final LearningType? learningTypeThree}) = _$UserProfileImpl;
  const _UserProfile._() : super._();

  @override
  String get userProfileId;
  @override
  LearningLanguage get nativeLanguage;
  @override
  LearningLanguage get learningLanguage;
  @override
  LearningType? get learningTypeOne;
  @override
  LearningType? get learningTypeTwo;
  @override
  LearningType? get learningTypeThree;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
