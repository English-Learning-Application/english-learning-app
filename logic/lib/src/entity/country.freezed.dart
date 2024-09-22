// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Country {
  String get countryNumber => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  String get countryFullName => throw _privateConstructorUsedError;
  bool get hasAdministrativeRegion => throw _privateConstructorUsedError;
  String get countryCallingCode => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call(
      {String countryNumber,
      String countryName,
      String countryFullName,
      bool hasAdministrativeRegion,
      String countryCallingCode});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryNumber = null,
    Object? countryName = null,
    Object? countryFullName = null,
    Object? hasAdministrativeRegion = null,
    Object? countryCallingCode = null,
  }) {
    return _then(_value.copyWith(
      countryNumber: null == countryNumber
          ? _value.countryNumber
          : countryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      countryFullName: null == countryFullName
          ? _value.countryFullName
          : countryFullName // ignore: cast_nullable_to_non_nullable
              as String,
      hasAdministrativeRegion: null == hasAdministrativeRegion
          ? _value.hasAdministrativeRegion
          : hasAdministrativeRegion // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCallingCode: null == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryNumber,
      String countryName,
      String countryFullName,
      bool hasAdministrativeRegion,
      String countryCallingCode});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryNumber = null,
    Object? countryName = null,
    Object? countryFullName = null,
    Object? hasAdministrativeRegion = null,
    Object? countryCallingCode = null,
  }) {
    return _then(_$CountryImpl(
      countryNumber: null == countryNumber
          ? _value.countryNumber
          : countryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      countryFullName: null == countryFullName
          ? _value.countryFullName
          : countryFullName // ignore: cast_nullable_to_non_nullable
              as String,
      hasAdministrativeRegion: null == hasAdministrativeRegion
          ? _value.hasAdministrativeRegion
          : hasAdministrativeRegion // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCallingCode: null == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {this.countryNumber = Country.defaultCountryNumber,
      this.countryName = Country.defaultCountryName,
      this.countryFullName = Country.defaultCountryFullName,
      this.hasAdministrativeRegion = Country.defaultHasAdministrativeRegion,
      this.countryCallingCode = Country.defaultCountryCallingCode});

  @override
  @JsonKey()
  final String countryNumber;
  @override
  @JsonKey()
  final String countryName;
  @override
  @JsonKey()
  final String countryFullName;
  @override
  @JsonKey()
  final bool hasAdministrativeRegion;
  @override
  @JsonKey()
  final String countryCallingCode;

  @override
  String toString() {
    return 'Country(countryNumber: $countryNumber, countryName: $countryName, countryFullName: $countryFullName, hasAdministrativeRegion: $hasAdministrativeRegion, countryCallingCode: $countryCallingCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.countryNumber, countryNumber) ||
                other.countryNumber == countryNumber) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryFullName, countryFullName) ||
                other.countryFullName == countryFullName) &&
            (identical(
                    other.hasAdministrativeRegion, hasAdministrativeRegion) ||
                other.hasAdministrativeRegion == hasAdministrativeRegion) &&
            (identical(other.countryCallingCode, countryCallingCode) ||
                other.countryCallingCode == countryCallingCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryNumber, countryName,
      countryFullName, hasAdministrativeRegion, countryCallingCode);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country(
      {final String countryNumber,
      final String countryName,
      final String countryFullName,
      final bool hasAdministrativeRegion,
      final String countryCallingCode}) = _$CountryImpl;

  @override
  String get countryNumber;
  @override
  String get countryName;
  @override
  String get countryFullName;
  @override
  bool get hasAdministrativeRegion;
  @override
  String get countryCallingCode;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Province {
  String get provinceNumber => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;
  String get provinceFullName => throw _privateConstructorUsedError;
  num get provinceLat => throw _privateConstructorUsedError;
  num get provinceLng => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call(
      {String provinceNumber,
      String provinceName,
      String provinceFullName,
      num provinceLat,
      num provinceLng,
      Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceNumber = null,
    Object? provinceName = null,
    Object? provinceFullName = null,
    Object? provinceLat = null,
    Object? provinceLng = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      provinceNumber: null == provinceNumber
          ? _value.provinceNumber
          : provinceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      provinceFullName: null == provinceFullName
          ? _value.provinceFullName
          : provinceFullName // ignore: cast_nullable_to_non_nullable
              as String,
      provinceLat: null == provinceLat
          ? _value.provinceLat
          : provinceLat // ignore: cast_nullable_to_non_nullable
              as num,
      provinceLng: null == provinceLng
          ? _value.provinceLng
          : provinceLng // ignore: cast_nullable_to_non_nullable
              as num,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProvinceImplCopyWith<$Res>
    implements $ProvinceCopyWith<$Res> {
  factory _$$ProvinceImplCopyWith(
          _$ProvinceImpl value, $Res Function(_$ProvinceImpl) then) =
      __$$ProvinceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String provinceNumber,
      String provinceName,
      String provinceFullName,
      num provinceLat,
      num provinceLng,
      Country country});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$ProvinceImplCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$ProvinceImpl>
    implements _$$ProvinceImplCopyWith<$Res> {
  __$$ProvinceImplCopyWithImpl(
      _$ProvinceImpl _value, $Res Function(_$ProvinceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceNumber = null,
    Object? provinceName = null,
    Object? provinceFullName = null,
    Object? provinceLat = null,
    Object? provinceLng = null,
    Object? country = null,
  }) {
    return _then(_$ProvinceImpl(
      provinceNumber: null == provinceNumber
          ? _value.provinceNumber
          : provinceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      provinceFullName: null == provinceFullName
          ? _value.provinceFullName
          : provinceFullName // ignore: cast_nullable_to_non_nullable
              as String,
      provinceLat: null == provinceLat
          ? _value.provinceLat
          : provinceLat // ignore: cast_nullable_to_non_nullable
              as num,
      provinceLng: null == provinceLng
          ? _value.provinceLng
          : provinceLng // ignore: cast_nullable_to_non_nullable
              as num,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$ProvinceImpl implements _Province {
  const _$ProvinceImpl(
      {this.provinceNumber = Province.defaultProvinceNumber,
      this.provinceName = Province.defaultProvinceName,
      this.provinceFullName = Province.defaultProvinceFullName,
      this.provinceLat = Province.defaultProvinceLat,
      this.provinceLng = Province.defaultProvinceLng,
      this.country = Province.defaultCountry});

  @override
  @JsonKey()
  final String provinceNumber;
  @override
  @JsonKey()
  final String provinceName;
  @override
  @JsonKey()
  final String provinceFullName;
  @override
  @JsonKey()
  final num provinceLat;
  @override
  @JsonKey()
  final num provinceLng;
  @override
  @JsonKey()
  final Country country;

  @override
  String toString() {
    return 'Province(provinceNumber: $provinceNumber, provinceName: $provinceName, provinceFullName: $provinceFullName, provinceLat: $provinceLat, provinceLng: $provinceLng, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceImpl &&
            (identical(other.provinceNumber, provinceNumber) ||
                other.provinceNumber == provinceNumber) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.provinceFullName, provinceFullName) ||
                other.provinceFullName == provinceFullName) &&
            (identical(other.provinceLat, provinceLat) ||
                other.provinceLat == provinceLat) &&
            (identical(other.provinceLng, provinceLng) ||
                other.provinceLng == provinceLng) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provinceNumber, provinceName,
      provinceFullName, provinceLat, provinceLng, country);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      __$$ProvinceImplCopyWithImpl<_$ProvinceImpl>(this, _$identity);
}

abstract class _Province implements Province {
  const factory _Province(
      {final String provinceNumber,
      final String provinceName,
      final String provinceFullName,
      final num provinceLat,
      final num provinceLng,
      final Country country}) = _$ProvinceImpl;

  @override
  String get provinceNumber;
  @override
  String get provinceName;
  @override
  String get provinceFullName;
  @override
  num get provinceLat;
  @override
  num get provinceLng;
  @override
  Country get country;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
