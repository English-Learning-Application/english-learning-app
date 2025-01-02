// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_initial_app_data_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetInitialAppDataInput {}

/// @nodoc
abstract class $GetInitialAppDataInputCopyWith<$Res> {
  factory $GetInitialAppDataInputCopyWith(GetInitialAppDataInput value,
          $Res Function(GetInitialAppDataInput) then) =
      _$GetInitialAppDataInputCopyWithImpl<$Res, GetInitialAppDataInput>;
}

/// @nodoc
class _$GetInitialAppDataInputCopyWithImpl<$Res,
        $Val extends GetInitialAppDataInput>
    implements $GetInitialAppDataInputCopyWith<$Res> {
  _$GetInitialAppDataInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInitialAppDataInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInitialAppDataInputImplCopyWith<$Res> {
  factory _$$GetInitialAppDataInputImplCopyWith(
          _$GetInitialAppDataInputImpl value,
          $Res Function(_$GetInitialAppDataInputImpl) then) =
      __$$GetInitialAppDataInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInitialAppDataInputImplCopyWithImpl<$Res>
    extends _$GetInitialAppDataInputCopyWithImpl<$Res,
        _$GetInitialAppDataInputImpl>
    implements _$$GetInitialAppDataInputImplCopyWith<$Res> {
  __$$GetInitialAppDataInputImplCopyWithImpl(
      _$GetInitialAppDataInputImpl _value,
      $Res Function(_$GetInitialAppDataInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetInitialAppDataInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInitialAppDataInputImpl implements _GetInitialAppDataInput {
  const _$GetInitialAppDataInputImpl();

  @override
  String toString() {
    return 'GetInitialAppDataInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInitialAppDataInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetInitialAppDataInput implements GetInitialAppDataInput {
  const factory _GetInitialAppDataInput() = _$GetInitialAppDataInputImpl;
}

/// @nodoc
mixin _$GetInitialAppDataOutput {
  AppThemeType get appTheme => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  LanguageCode get languageCode => throw _privateConstructorUsedError;
  InitialAppRoute get initialAppRoute => throw _privateConstructorUsedError;
  bool get isFirstLaunch => throw _privateConstructorUsedError;

  /// Create a copy of GetInitialAppDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetInitialAppDataOutputCopyWith<GetInitialAppDataOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInitialAppDataOutputCopyWith<$Res> {
  factory $GetInitialAppDataOutputCopyWith(GetInitialAppDataOutput value,
          $Res Function(GetInitialAppDataOutput) then) =
      _$GetInitialAppDataOutputCopyWithImpl<$Res, GetInitialAppDataOutput>;
  @useResult
  $Res call(
      {AppThemeType appTheme,
      bool isLoggedIn,
      LanguageCode languageCode,
      InitialAppRoute initialAppRoute,
      bool isFirstLaunch});
}

/// @nodoc
class _$GetInitialAppDataOutputCopyWithImpl<$Res,
        $Val extends GetInitialAppDataOutput>
    implements $GetInitialAppDataOutputCopyWith<$Res> {
  _$GetInitialAppDataOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInitialAppDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appTheme = null,
    Object? isLoggedIn = null,
    Object? languageCode = null,
    Object? initialAppRoute = null,
    Object? isFirstLaunch = null,
  }) {
    return _then(_value.copyWith(
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      initialAppRoute: null == initialAppRoute
          ? _value.initialAppRoute
          : initialAppRoute // ignore: cast_nullable_to_non_nullable
              as InitialAppRoute,
      isFirstLaunch: null == isFirstLaunch
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInitialAppDataOutputImplCopyWith<$Res>
    implements $GetInitialAppDataOutputCopyWith<$Res> {
  factory _$$GetInitialAppDataOutputImplCopyWith(
          _$GetInitialAppDataOutputImpl value,
          $Res Function(_$GetInitialAppDataOutputImpl) then) =
      __$$GetInitialAppDataOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType appTheme,
      bool isLoggedIn,
      LanguageCode languageCode,
      InitialAppRoute initialAppRoute,
      bool isFirstLaunch});
}

/// @nodoc
class __$$GetInitialAppDataOutputImplCopyWithImpl<$Res>
    extends _$GetInitialAppDataOutputCopyWithImpl<$Res,
        _$GetInitialAppDataOutputImpl>
    implements _$$GetInitialAppDataOutputImplCopyWith<$Res> {
  __$$GetInitialAppDataOutputImplCopyWithImpl(
      _$GetInitialAppDataOutputImpl _value,
      $Res Function(_$GetInitialAppDataOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetInitialAppDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appTheme = null,
    Object? isLoggedIn = null,
    Object? languageCode = null,
    Object? initialAppRoute = null,
    Object? isFirstLaunch = null,
  }) {
    return _then(_$GetInitialAppDataOutputImpl(
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      initialAppRoute: null == initialAppRoute
          ? _value.initialAppRoute
          : initialAppRoute // ignore: cast_nullable_to_non_nullable
              as InitialAppRoute,
      isFirstLaunch: null == isFirstLaunch
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetInitialAppDataOutputImpl extends _GetInitialAppDataOutput {
  const _$GetInitialAppDataOutputImpl(
      {this.appTheme = AppThemeType.system,
      this.isLoggedIn = false,
      this.languageCode = LanguageCode.defaultValue,
      this.initialAppRoute = InitialAppRoute.login,
      this.isFirstLaunch = false})
      : super._();

  @override
  @JsonKey()
  final AppThemeType appTheme;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final LanguageCode languageCode;
  @override
  @JsonKey()
  final InitialAppRoute initialAppRoute;
  @override
  @JsonKey()
  final bool isFirstLaunch;

  @override
  String toString() {
    return 'GetInitialAppDataOutput(appTheme: $appTheme, isLoggedIn: $isLoggedIn, languageCode: $languageCode, initialAppRoute: $initialAppRoute, isFirstLaunch: $isFirstLaunch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInitialAppDataOutputImpl &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.initialAppRoute, initialAppRoute) ||
                other.initialAppRoute == initialAppRoute) &&
            (identical(other.isFirstLaunch, isFirstLaunch) ||
                other.isFirstLaunch == isFirstLaunch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appTheme, isLoggedIn,
      languageCode, initialAppRoute, isFirstLaunch);

  /// Create a copy of GetInitialAppDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInitialAppDataOutputImplCopyWith<_$GetInitialAppDataOutputImpl>
      get copyWith => __$$GetInitialAppDataOutputImplCopyWithImpl<
          _$GetInitialAppDataOutputImpl>(this, _$identity);
}

abstract class _GetInitialAppDataOutput extends GetInitialAppDataOutput {
  const factory _GetInitialAppDataOutput(
      {final AppThemeType appTheme,
      final bool isLoggedIn,
      final LanguageCode languageCode,
      final InitialAppRoute initialAppRoute,
      final bool isFirstLaunch}) = _$GetInitialAppDataOutputImpl;
  const _GetInitialAppDataOutput._() : super._();

  @override
  AppThemeType get appTheme;
  @override
  bool get isLoggedIn;
  @override
  LanguageCode get languageCode;
  @override
  InitialAppRoute get initialAppRoute;
  @override
  bool get isFirstLaunch;

  /// Create a copy of GetInitialAppDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInitialAppDataOutputImplCopyWith<_$GetInitialAppDataOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
