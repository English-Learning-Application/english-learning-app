// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Media {
  String get mediaNumber => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  String get mediaUrlLg => throw _privateConstructorUsedError;
  String get mediaUrlMd => throw _privateConstructorUsedError;
  String get mediaUrlSm => throw _privateConstructorUsedError;
  MediaType get mediaType => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {String mediaNumber,
      String mediaUrl,
      String mediaUrlLg,
      String mediaUrlMd,
      String mediaUrlSm,
      MediaType mediaType});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaNumber = null,
    Object? mediaUrl = null,
    Object? mediaUrlLg = null,
    Object? mediaUrlMd = null,
    Object? mediaUrlSm = null,
    Object? mediaType = null,
  }) {
    return _then(_value.copyWith(
      mediaNumber: null == mediaNumber
          ? _value.mediaNumber
          : mediaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlLg: null == mediaUrlLg
          ? _value.mediaUrlLg
          : mediaUrlLg // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlMd: null == mediaUrlMd
          ? _value.mediaUrlMd
          : mediaUrlMd // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlSm: null == mediaUrlSm
          ? _value.mediaUrlSm
          : mediaUrlSm // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mediaNumber,
      String mediaUrl,
      String mediaUrlLg,
      String mediaUrlMd,
      String mediaUrlSm,
      MediaType mediaType});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaNumber = null,
    Object? mediaUrl = null,
    Object? mediaUrlLg = null,
    Object? mediaUrlMd = null,
    Object? mediaUrlSm = null,
    Object? mediaType = null,
  }) {
    return _then(_$MediaImpl(
      mediaNumber: null == mediaNumber
          ? _value.mediaNumber
          : mediaNumber // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlLg: null == mediaUrlLg
          ? _value.mediaUrlLg
          : mediaUrlLg // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlMd: null == mediaUrlMd
          ? _value.mediaUrlMd
          : mediaUrlMd // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrlSm: null == mediaUrlSm
          ? _value.mediaUrlSm
          : mediaUrlSm // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc

class _$MediaImpl extends _Media {
  const _$MediaImpl(
      {this.mediaNumber = Media.defaultMediaNumber,
      this.mediaUrl = Media.defaultMediaUrl,
      this.mediaUrlLg = Media.defaultMediaUrlLg,
      this.mediaUrlMd = Media.defaultMediaUrlMd,
      this.mediaUrlSm = Media.defaultMediaUrlSm,
      this.mediaType = Media.defaultMediaType})
      : super._();

  @override
  @JsonKey()
  final String mediaNumber;
  @override
  @JsonKey()
  final String mediaUrl;
  @override
  @JsonKey()
  final String mediaUrlLg;
  @override
  @JsonKey()
  final String mediaUrlMd;
  @override
  @JsonKey()
  final String mediaUrlSm;
  @override
  @JsonKey()
  final MediaType mediaType;

  @override
  String toString() {
    return 'Media(mediaNumber: $mediaNumber, mediaUrl: $mediaUrl, mediaUrlLg: $mediaUrlLg, mediaUrlMd: $mediaUrlMd, mediaUrlSm: $mediaUrlSm, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.mediaNumber, mediaNumber) ||
                other.mediaNumber == mediaNumber) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.mediaUrlLg, mediaUrlLg) ||
                other.mediaUrlLg == mediaUrlLg) &&
            (identical(other.mediaUrlMd, mediaUrlMd) ||
                other.mediaUrlMd == mediaUrlMd) &&
            (identical(other.mediaUrlSm, mediaUrlSm) ||
                other.mediaUrlSm == mediaUrlSm) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mediaNumber, mediaUrl,
      mediaUrlLg, mediaUrlMd, mediaUrlSm, mediaType);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);
}

abstract class _Media extends Media {
  const factory _Media(
      {final String mediaNumber,
      final String mediaUrl,
      final String mediaUrlLg,
      final String mediaUrlMd,
      final String mediaUrlSm,
      final MediaType mediaType}) = _$MediaImpl;
  const _Media._() : super._();

  @override
  String get mediaNumber;
  @override
  String get mediaUrl;
  @override
  String get mediaUrlLg;
  @override
  String get mediaUrlMd;
  @override
  String get mediaUrlSm;
  @override
  MediaType get mediaType;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
