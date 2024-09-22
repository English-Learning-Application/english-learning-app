// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_fcm_token_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFcmTokenInput {
  String get fcmToken => throw _privateConstructorUsedError;

  /// Create a copy of RegisterFcmTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterFcmTokenInputCopyWith<RegisterFcmTokenInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFcmTokenInputCopyWith<$Res> {
  factory $RegisterFcmTokenInputCopyWith(RegisterFcmTokenInput value,
          $Res Function(RegisterFcmTokenInput) then) =
      _$RegisterFcmTokenInputCopyWithImpl<$Res, RegisterFcmTokenInput>;
  @useResult
  $Res call({String fcmToken});
}

/// @nodoc
class _$RegisterFcmTokenInputCopyWithImpl<$Res,
        $Val extends RegisterFcmTokenInput>
    implements $RegisterFcmTokenInputCopyWith<$Res> {
  _$RegisterFcmTokenInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterFcmTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFcmTokenInputImplCopyWith<$Res>
    implements $RegisterFcmTokenInputCopyWith<$Res> {
  factory _$$RegisterFcmTokenInputImplCopyWith(
          _$RegisterFcmTokenInputImpl value,
          $Res Function(_$RegisterFcmTokenInputImpl) then) =
      __$$RegisterFcmTokenInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmToken});
}

/// @nodoc
class __$$RegisterFcmTokenInputImplCopyWithImpl<$Res>
    extends _$RegisterFcmTokenInputCopyWithImpl<$Res,
        _$RegisterFcmTokenInputImpl>
    implements _$$RegisterFcmTokenInputImplCopyWith<$Res> {
  __$$RegisterFcmTokenInputImplCopyWithImpl(_$RegisterFcmTokenInputImpl _value,
      $Res Function(_$RegisterFcmTokenInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterFcmTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$RegisterFcmTokenInputImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterFcmTokenInputImpl implements _RegisterFcmTokenInput {
  const _$RegisterFcmTokenInputImpl({required this.fcmToken});

  @override
  final String fcmToken;

  @override
  String toString() {
    return 'RegisterFcmTokenInput(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFcmTokenInputImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  /// Create a copy of RegisterFcmTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFcmTokenInputImplCopyWith<_$RegisterFcmTokenInputImpl>
      get copyWith => __$$RegisterFcmTokenInputImplCopyWithImpl<
          _$RegisterFcmTokenInputImpl>(this, _$identity);
}

abstract class _RegisterFcmTokenInput implements RegisterFcmTokenInput {
  const factory _RegisterFcmTokenInput({required final String fcmToken}) =
      _$RegisterFcmTokenInputImpl;

  @override
  String get fcmToken;

  /// Create a copy of RegisterFcmTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterFcmTokenInputImplCopyWith<_$RegisterFcmTokenInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterFcmTokenOutput {}

/// @nodoc
abstract class $RegisterFcmTokenOutputCopyWith<$Res> {
  factory $RegisterFcmTokenOutputCopyWith(RegisterFcmTokenOutput value,
          $Res Function(RegisterFcmTokenOutput) then) =
      _$RegisterFcmTokenOutputCopyWithImpl<$Res, RegisterFcmTokenOutput>;
}

/// @nodoc
class _$RegisterFcmTokenOutputCopyWithImpl<$Res,
        $Val extends RegisterFcmTokenOutput>
    implements $RegisterFcmTokenOutputCopyWith<$Res> {
  _$RegisterFcmTokenOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterFcmTokenOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterFcmTokenOutputImplCopyWith<$Res> {
  factory _$$RegisterFcmTokenOutputImplCopyWith(
          _$RegisterFcmTokenOutputImpl value,
          $Res Function(_$RegisterFcmTokenOutputImpl) then) =
      __$$RegisterFcmTokenOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterFcmTokenOutputImplCopyWithImpl<$Res>
    extends _$RegisterFcmTokenOutputCopyWithImpl<$Res,
        _$RegisterFcmTokenOutputImpl>
    implements _$$RegisterFcmTokenOutputImplCopyWith<$Res> {
  __$$RegisterFcmTokenOutputImplCopyWithImpl(
      _$RegisterFcmTokenOutputImpl _value,
      $Res Function(_$RegisterFcmTokenOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterFcmTokenOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterFcmTokenOutputImpl implements _RegisterFcmTokenOutput {
  const _$RegisterFcmTokenOutputImpl();

  @override
  String toString() {
    return 'RegisterFcmTokenOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFcmTokenOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RegisterFcmTokenOutput implements RegisterFcmTokenOutput {
  const factory _RegisterFcmTokenOutput() = _$RegisterFcmTokenOutputImpl;
}
