// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginViewModelData {
  String get phoneNumber => throw _privateConstructorUsedError;
  LoginMode get loginMode => throw _privateConstructorUsedError;
  bool get isShowPassword => throw _privateConstructorUsedError;

  /// Create a copy of LoginViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginViewModelDataCopyWith<LoginViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginViewModelDataCopyWith<$Res> {
  factory $LoginViewModelDataCopyWith(
          LoginViewModelData value, $Res Function(LoginViewModelData) then) =
      _$LoginViewModelDataCopyWithImpl<$Res, LoginViewModelData>;
  @useResult
  $Res call({String phoneNumber, LoginMode loginMode, bool isShowPassword});
}

/// @nodoc
class _$LoginViewModelDataCopyWithImpl<$Res, $Val extends LoginViewModelData>
    implements $LoginViewModelDataCopyWith<$Res> {
  _$LoginViewModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? loginMode = null,
    Object? isShowPassword = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      loginMode: null == loginMode
          ? _value.loginMode
          : loginMode // ignore: cast_nullable_to_non_nullable
              as LoginMode,
      isShowPassword: null == isShowPassword
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginViewModelDataImplCopyWith<$Res>
    implements $LoginViewModelDataCopyWith<$Res> {
  factory _$$LoginViewModelDataImplCopyWith(_$LoginViewModelDataImpl value,
          $Res Function(_$LoginViewModelDataImpl) then) =
      __$$LoginViewModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, LoginMode loginMode, bool isShowPassword});
}

/// @nodoc
class __$$LoginViewModelDataImplCopyWithImpl<$Res>
    extends _$LoginViewModelDataCopyWithImpl<$Res, _$LoginViewModelDataImpl>
    implements _$$LoginViewModelDataImplCopyWith<$Res> {
  __$$LoginViewModelDataImplCopyWithImpl(_$LoginViewModelDataImpl _value,
      $Res Function(_$LoginViewModelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? loginMode = null,
    Object? isShowPassword = null,
  }) {
    return _then(_$LoginViewModelDataImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      loginMode: null == loginMode
          ? _value.loginMode
          : loginMode // ignore: cast_nullable_to_non_nullable
              as LoginMode,
      isShowPassword: null == isShowPassword
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginViewModelDataImpl extends _LoginViewModelData {
  const _$LoginViewModelDataImpl(
      {this.phoneNumber = '',
      this.loginMode = LoginMode.none,
      this.isShowPassword = false})
      : super._();

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final LoginMode loginMode;
  @override
  @JsonKey()
  final bool isShowPassword;

  @override
  String toString() {
    return 'LoginViewModelData(phoneNumber: $phoneNumber, loginMode: $loginMode, isShowPassword: $isShowPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViewModelDataImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.loginMode, loginMode) ||
                other.loginMode == loginMode) &&
            (identical(other.isShowPassword, isShowPassword) ||
                other.isShowPassword == isShowPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, loginMode, isShowPassword);

  /// Create a copy of LoginViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViewModelDataImplCopyWith<_$LoginViewModelDataImpl> get copyWith =>
      __$$LoginViewModelDataImplCopyWithImpl<_$LoginViewModelDataImpl>(
          this, _$identity);
}

abstract class _LoginViewModelData extends LoginViewModelData {
  const factory _LoginViewModelData(
      {final String phoneNumber,
      final LoginMode loginMode,
      final bool isShowPassword}) = _$LoginViewModelDataImpl;
  const _LoginViewModelData._() : super._();

  @override
  String get phoneNumber;
  @override
  LoginMode get loginMode;
  @override
  bool get isShowPassword;

  /// Create a copy of LoginViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginViewModelDataImplCopyWith<_$LoginViewModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
