// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppViewModelData {
  User get currentUser => throw _privateConstructorUsedError;
  LanguageCode get languageCode => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  AppThemeType get appTheme => throw _privateConstructorUsedError;

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppViewModelDataCopyWith<AppViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppViewModelDataCopyWith<$Res> {
  factory $AppViewModelDataCopyWith(
          AppViewModelData value, $Res Function(AppViewModelData) then) =
      _$AppViewModelDataCopyWithImpl<$Res, AppViewModelData>;
  @useResult
  $Res call(
      {User currentUser,
      LanguageCode languageCode,
      bool isLoggedIn,
      AppThemeType appTheme});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$AppViewModelDataCopyWithImpl<$Res, $Val extends AppViewModelData>
    implements $AppViewModelDataCopyWith<$Res> {
  _$AppViewModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? languageCode = null,
    Object? isLoggedIn = null,
    Object? appTheme = null,
  }) {
    return _then(_value.copyWith(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
    ) as $Val);
  }

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppViewModelDataImplCopyWith<$Res>
    implements $AppViewModelDataCopyWith<$Res> {
  factory _$$AppViewModelDataImplCopyWith(_$AppViewModelDataImpl value,
          $Res Function(_$AppViewModelDataImpl) then) =
      __$$AppViewModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User currentUser,
      LanguageCode languageCode,
      bool isLoggedIn,
      AppThemeType appTheme});

  @override
  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$AppViewModelDataImplCopyWithImpl<$Res>
    extends _$AppViewModelDataCopyWithImpl<$Res, _$AppViewModelDataImpl>
    implements _$$AppViewModelDataImplCopyWith<$Res> {
  __$$AppViewModelDataImplCopyWithImpl(_$AppViewModelDataImpl _value,
      $Res Function(_$AppViewModelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? languageCode = null,
    Object? isLoggedIn = null,
    Object? appTheme = null,
  }) {
    return _then(_$AppViewModelDataImpl(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
    ));
  }
}

/// @nodoc

class _$AppViewModelDataImpl extends _AppViewModelData {
  const _$AppViewModelDataImpl(
      {this.currentUser = User.empty,
      this.languageCode = LanguageCode.defaultValue,
      this.isLoggedIn = false,
      this.appTheme = AppThemeType.system})
      : super._();

  @override
  @JsonKey()
  final User currentUser;
  @override
  @JsonKey()
  final LanguageCode languageCode;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final AppThemeType appTheme;

  @override
  String toString() {
    return 'AppViewModelData(currentUser: $currentUser, languageCode: $languageCode, isLoggedIn: $isLoggedIn, appTheme: $appTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppViewModelDataImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentUser, languageCode, isLoggedIn, appTheme);

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppViewModelDataImplCopyWith<_$AppViewModelDataImpl> get copyWith =>
      __$$AppViewModelDataImplCopyWithImpl<_$AppViewModelDataImpl>(
          this, _$identity);
}

abstract class _AppViewModelData extends AppViewModelData {
  const factory _AppViewModelData(
      {final User currentUser,
      final LanguageCode languageCode,
      final bool isLoggedIn,
      final AppThemeType appTheme}) = _$AppViewModelDataImpl;
  const _AppViewModelData._() : super._();

  @override
  User get currentUser;
  @override
  LanguageCode get languageCode;
  @override
  bool get isLoggedIn;
  @override
  AppThemeType get appTheme;

  /// Create a copy of AppViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppViewModelDataImplCopyWith<_$AppViewModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
