// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_connectivity_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackConnectivityInput {}

/// @nodoc
abstract class $TrackConnectivityInputCopyWith<$Res> {
  factory $TrackConnectivityInputCopyWith(TrackConnectivityInput value,
          $Res Function(TrackConnectivityInput) then) =
      _$TrackConnectivityInputCopyWithImpl<$Res, TrackConnectivityInput>;
}

/// @nodoc
class _$TrackConnectivityInputCopyWithImpl<$Res,
        $Val extends TrackConnectivityInput>
    implements $TrackConnectivityInputCopyWith<$Res> {
  _$TrackConnectivityInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackConnectivityInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TrackConnectivityInputImplCopyWith<$Res> {
  factory _$$TrackConnectivityInputImplCopyWith(
          _$TrackConnectivityInputImpl value,
          $Res Function(_$TrackConnectivityInputImpl) then) =
      __$$TrackConnectivityInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackConnectivityInputImplCopyWithImpl<$Res>
    extends _$TrackConnectivityInputCopyWithImpl<$Res,
        _$TrackConnectivityInputImpl>
    implements _$$TrackConnectivityInputImplCopyWith<$Res> {
  __$$TrackConnectivityInputImplCopyWithImpl(
      _$TrackConnectivityInputImpl _value,
      $Res Function(_$TrackConnectivityInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackConnectivityInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrackConnectivityInputImpl implements _TrackConnectivityInput {
  const _$TrackConnectivityInputImpl();

  @override
  String toString() {
    return 'TrackConnectivityInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackConnectivityInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _TrackConnectivityInput implements TrackConnectivityInput {
  const factory _TrackConnectivityInput() = _$TrackConnectivityInputImpl;
}

/// @nodoc
mixin _$TrackConnectivityOutput {
  bool get isConnected => throw _privateConstructorUsedError;

  /// Create a copy of TrackConnectivityOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackConnectivityOutputCopyWith<TrackConnectivityOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackConnectivityOutputCopyWith<$Res> {
  factory $TrackConnectivityOutputCopyWith(TrackConnectivityOutput value,
          $Res Function(TrackConnectivityOutput) then) =
      _$TrackConnectivityOutputCopyWithImpl<$Res, TrackConnectivityOutput>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$TrackConnectivityOutputCopyWithImpl<$Res,
        $Val extends TrackConnectivityOutput>
    implements $TrackConnectivityOutputCopyWith<$Res> {
  _$TrackConnectivityOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackConnectivityOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackConnectivityOutputImplCopyWith<$Res>
    implements $TrackConnectivityOutputCopyWith<$Res> {
  factory _$$TrackConnectivityOutputImplCopyWith(
          _$TrackConnectivityOutputImpl value,
          $Res Function(_$TrackConnectivityOutputImpl) then) =
      __$$TrackConnectivityOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$TrackConnectivityOutputImplCopyWithImpl<$Res>
    extends _$TrackConnectivityOutputCopyWithImpl<$Res,
        _$TrackConnectivityOutputImpl>
    implements _$$TrackConnectivityOutputImplCopyWith<$Res> {
  __$$TrackConnectivityOutputImplCopyWithImpl(
      _$TrackConnectivityOutputImpl _value,
      $Res Function(_$TrackConnectivityOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackConnectivityOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$TrackConnectivityOutputImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TrackConnectivityOutputImpl implements _TrackConnectivityOutput {
  const _$TrackConnectivityOutputImpl({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'TrackConnectivityOutput(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackConnectivityOutputImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  /// Create a copy of TrackConnectivityOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackConnectivityOutputImplCopyWith<_$TrackConnectivityOutputImpl>
      get copyWith => __$$TrackConnectivityOutputImplCopyWithImpl<
          _$TrackConnectivityOutputImpl>(this, _$identity);
}

abstract class _TrackConnectivityOutput implements TrackConnectivityOutput {
  const factory _TrackConnectivityOutput({required final bool isConnected}) =
      _$TrackConnectivityOutputImpl;

  @override
  bool get isConnected;

  /// Create a copy of TrackConnectivityOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackConnectivityOutputImplCopyWith<_$TrackConnectivityOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
