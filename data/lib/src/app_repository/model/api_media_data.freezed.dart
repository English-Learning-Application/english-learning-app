// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_media_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiMediaData _$ApiMediaDataFromJson(Map<String, dynamic> json) {
  return _ApiMediaData.fromJson(json);
}

/// @nodoc
mixin _$ApiMediaData {
  @JsonKey(name: 'mediaId')
  String? get mediaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaUrl')
  String? get mediaUrl => throw _privateConstructorUsedError;

  /// Serializes this ApiMediaData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiMediaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiMediaDataCopyWith<ApiMediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMediaDataCopyWith<$Res> {
  factory $ApiMediaDataCopyWith(
          ApiMediaData value, $Res Function(ApiMediaData) then) =
      _$ApiMediaDataCopyWithImpl<$Res, ApiMediaData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mediaId') String? mediaId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'mediaUrl') String? mediaUrl});
}

/// @nodoc
class _$ApiMediaDataCopyWithImpl<$Res, $Val extends ApiMediaData>
    implements $ApiMediaDataCopyWith<$Res> {
  _$ApiMediaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiMediaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = freezed,
    Object? mediaType = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_value.copyWith(
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiMediaDataImplCopyWith<$Res>
    implements $ApiMediaDataCopyWith<$Res> {
  factory _$$ApiMediaDataImplCopyWith(
          _$ApiMediaDataImpl value, $Res Function(_$ApiMediaDataImpl) then) =
      __$$ApiMediaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mediaId') String? mediaId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'mediaUrl') String? mediaUrl});
}

/// @nodoc
class __$$ApiMediaDataImplCopyWithImpl<$Res>
    extends _$ApiMediaDataCopyWithImpl<$Res, _$ApiMediaDataImpl>
    implements _$$ApiMediaDataImplCopyWith<$Res> {
  __$$ApiMediaDataImplCopyWithImpl(
      _$ApiMediaDataImpl _value, $Res Function(_$ApiMediaDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiMediaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = freezed,
    Object? mediaType = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_$ApiMediaDataImpl(
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiMediaDataImpl implements _ApiMediaData {
  const _$ApiMediaDataImpl(
      {@JsonKey(name: 'mediaId') this.mediaId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'mediaUrl') this.mediaUrl});

  factory _$ApiMediaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiMediaDataImplFromJson(json);

  @override
  @JsonKey(name: 'mediaId')
  final String? mediaId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'mediaUrl')
  final String? mediaUrl;

  @override
  String toString() {
    return 'ApiMediaData(mediaId: $mediaId, mediaType: $mediaType, mediaUrl: $mediaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiMediaDataImpl &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediaId, mediaType, mediaUrl);

  /// Create a copy of ApiMediaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiMediaDataImplCopyWith<_$ApiMediaDataImpl> get copyWith =>
      __$$ApiMediaDataImplCopyWithImpl<_$ApiMediaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiMediaDataImplToJson(
      this,
    );
  }
}

abstract class _ApiMediaData implements ApiMediaData {
  const factory _ApiMediaData(
      {@JsonKey(name: 'mediaId') final String? mediaId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'mediaUrl') final String? mediaUrl}) = _$ApiMediaDataImpl;

  factory _ApiMediaData.fromJson(Map<String, dynamic> json) =
      _$ApiMediaDataImpl.fromJson;

  @override
  @JsonKey(name: 'mediaId')
  String? get mediaId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'mediaUrl')
  String? get mediaUrl;

  /// Create a copy of ApiMediaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiMediaDataImplCopyWith<_$ApiMediaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
