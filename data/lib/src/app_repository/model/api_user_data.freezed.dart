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
  @JsonKey(name: 'media')
  ApiMediaData? get media => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'media') ApiMediaData? media});

  $ApiMediaDataCopyWith<$Res>? get media;
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
    Object? media = freezed,
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
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
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
      @JsonKey(name: 'media') ApiMediaData? media});

  @override
  $ApiMediaDataCopyWith<$Res>? get media;
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
    Object? media = freezed,
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
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ApiMediaData?,
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
      @JsonKey(name: 'media') this.media});

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
  @JsonKey(name: 'media')
  final ApiMediaData? media;

  @override
  String toString() {
    return 'ApiUserData(userId: $userId, email: $email, username: $username, googleId: $googleId, facebookId: $facebookId, phone: $phone, media: $media)';
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
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, email, username, googleId, facebookId, phone, media);

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
      @JsonKey(name: 'media') final ApiMediaData? media}) = _$ApiUserDataImpl;

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
  @JsonKey(name: 'media')
  ApiMediaData? get media;

  /// Create a copy of ApiUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserDataImplCopyWith<_$ApiUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
