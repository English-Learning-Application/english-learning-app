// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListResponse<T> _$ListResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ListResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ListResponse<T> {
  @JsonKey(name: 'results')
  List<T>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ListResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListResponseCopyWith<T, ListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponseCopyWith<T, $Res> {
  factory $ListResponseCopyWith(
          ListResponse<T> value, $Res Function(ListResponse<T>) then) =
      _$ListResponseCopyWithImpl<T, $Res, ListResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<T>? results,
      @JsonKey(name: 'status_code') int? statusCode,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ListResponseCopyWithImpl<T, $Res, $Val extends ListResponse<T>>
    implements $ListResponseCopyWith<T, $Res> {
  _$ListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListResponseImplCopyWith<T, $Res>
    implements $ListResponseCopyWith<T, $Res> {
  factory _$$ListResponseImplCopyWith(_$ListResponseImpl<T> value,
          $Res Function(_$ListResponseImpl<T>) then) =
      __$$ListResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<T>? results,
      @JsonKey(name: 'status_code') int? statusCode,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ListResponseImplCopyWithImpl<T, $Res>
    extends _$ListResponseCopyWithImpl<T, $Res, _$ListResponseImpl<T>>
    implements _$$ListResponseImplCopyWith<T, $Res> {
  __$$ListResponseImplCopyWithImpl(
      _$ListResponseImpl<T> _value, $Res Function(_$ListResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ListResponseImpl<T>(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ListResponseImpl<T> implements _ListResponse<T> {
  const _$ListResponseImpl(
      {@JsonKey(name: 'results') final List<T>? results,
      @JsonKey(name: 'status_code') this.statusCode,
      @JsonKey(name: 'message') this.message})
      : _results = results;

  factory _$ListResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ListResponseImplFromJson(json, fromJsonT);

  final List<T>? _results;
  @override
  @JsonKey(name: 'results')
  List<T>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ListResponse<$T>(results: $results, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), statusCode, message);

  /// Create a copy of ListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListResponseImplCopyWith<T, _$ListResponseImpl<T>> get copyWith =>
      __$$ListResponseImplCopyWithImpl<T, _$ListResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ListResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ListResponse<T> implements ListResponse<T> {
  const factory _ListResponse(
      {@JsonKey(name: 'results') final List<T>? results,
      @JsonKey(name: 'status_code') final int? statusCode,
      @JsonKey(name: 'message') final String? message}) = _$ListResponseImpl<T>;

  factory _ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ListResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: 'results')
  List<T>? get results;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListResponseImplCopyWith<T, _$ListResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
