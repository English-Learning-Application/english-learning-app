// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiCountryData _$ApiCountryDataFromJson(Map<String, dynamic> json) {
  return _ApiCountryData.fromJson(json);
}

/// @nodoc
mixin _$ApiCountryData {
  @JsonKey(name: 'country_number')
  String? get countryNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_name')
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_full_name')
  String? get countryFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_administrative_region')
  bool? get hasAdministrativeRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_calling_code')
  String? get countryCallingCode => throw _privateConstructorUsedError;

  /// Serializes this ApiCountryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiCountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiCountryDataCopyWith<ApiCountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCountryDataCopyWith<$Res> {
  factory $ApiCountryDataCopyWith(
          ApiCountryData value, $Res Function(ApiCountryData) then) =
      _$ApiCountryDataCopyWithImpl<$Res, ApiCountryData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country_number') String? countryNumber,
      @JsonKey(name: 'country_name') String? countryName,
      @JsonKey(name: 'country_full_name') String? countryFullName,
      @JsonKey(name: 'has_administrative_region') bool? hasAdministrativeRegion,
      @JsonKey(name: 'country_calling_code') String? countryCallingCode});
}

/// @nodoc
class _$ApiCountryDataCopyWithImpl<$Res, $Val extends ApiCountryData>
    implements $ApiCountryDataCopyWith<$Res> {
  _$ApiCountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiCountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryNumber = freezed,
    Object? countryName = freezed,
    Object? countryFullName = freezed,
    Object? hasAdministrativeRegion = freezed,
    Object? countryCallingCode = freezed,
  }) {
    return _then(_value.copyWith(
      countryNumber: freezed == countryNumber
          ? _value.countryNumber
          : countryNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryFullName: freezed == countryFullName
          ? _value.countryFullName
          : countryFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      hasAdministrativeRegion: freezed == hasAdministrativeRegion
          ? _value.hasAdministrativeRegion
          : hasAdministrativeRegion // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryCallingCode: freezed == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiCountryDataImplCopyWith<$Res>
    implements $ApiCountryDataCopyWith<$Res> {
  factory _$$ApiCountryDataImplCopyWith(_$ApiCountryDataImpl value,
          $Res Function(_$ApiCountryDataImpl) then) =
      __$$ApiCountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country_number') String? countryNumber,
      @JsonKey(name: 'country_name') String? countryName,
      @JsonKey(name: 'country_full_name') String? countryFullName,
      @JsonKey(name: 'has_administrative_region') bool? hasAdministrativeRegion,
      @JsonKey(name: 'country_calling_code') String? countryCallingCode});
}

/// @nodoc
class __$$ApiCountryDataImplCopyWithImpl<$Res>
    extends _$ApiCountryDataCopyWithImpl<$Res, _$ApiCountryDataImpl>
    implements _$$ApiCountryDataImplCopyWith<$Res> {
  __$$ApiCountryDataImplCopyWithImpl(
      _$ApiCountryDataImpl _value, $Res Function(_$ApiCountryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiCountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryNumber = freezed,
    Object? countryName = freezed,
    Object? countryFullName = freezed,
    Object? hasAdministrativeRegion = freezed,
    Object? countryCallingCode = freezed,
  }) {
    return _then(_$ApiCountryDataImpl(
      countryNumber: freezed == countryNumber
          ? _value.countryNumber
          : countryNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryFullName: freezed == countryFullName
          ? _value.countryFullName
          : countryFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      hasAdministrativeRegion: freezed == hasAdministrativeRegion
          ? _value.hasAdministrativeRegion
          : hasAdministrativeRegion // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryCallingCode: freezed == countryCallingCode
          ? _value.countryCallingCode
          : countryCallingCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCountryDataImpl implements _ApiCountryData {
  const _$ApiCountryDataImpl(
      {@JsonKey(name: 'country_number') this.countryNumber,
      @JsonKey(name: 'country_name') this.countryName,
      @JsonKey(name: 'country_full_name') this.countryFullName,
      @JsonKey(name: 'has_administrative_region') this.hasAdministrativeRegion,
      @JsonKey(name: 'country_calling_code') this.countryCallingCode});

  factory _$ApiCountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCountryDataImplFromJson(json);

  @override
  @JsonKey(name: 'country_number')
  final String? countryNumber;
  @override
  @JsonKey(name: 'country_name')
  final String? countryName;
  @override
  @JsonKey(name: 'country_full_name')
  final String? countryFullName;
  @override
  @JsonKey(name: 'has_administrative_region')
  final bool? hasAdministrativeRegion;
  @override
  @JsonKey(name: 'country_calling_code')
  final String? countryCallingCode;

  @override
  String toString() {
    return 'ApiCountryData(countryNumber: $countryNumber, countryName: $countryName, countryFullName: $countryFullName, hasAdministrativeRegion: $hasAdministrativeRegion, countryCallingCode: $countryCallingCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCountryDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryNumber, countryName,
      countryFullName, hasAdministrativeRegion, countryCallingCode);

  /// Create a copy of ApiCountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCountryDataImplCopyWith<_$ApiCountryDataImpl> get copyWith =>
      __$$ApiCountryDataImplCopyWithImpl<_$ApiCountryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCountryDataImplToJson(
      this,
    );
  }
}

abstract class _ApiCountryData implements ApiCountryData {
  const factory _ApiCountryData(
      {@JsonKey(name: 'country_number') final String? countryNumber,
      @JsonKey(name: 'country_name') final String? countryName,
      @JsonKey(name: 'country_full_name') final String? countryFullName,
      @JsonKey(name: 'has_administrative_region')
      final bool? hasAdministrativeRegion,
      @JsonKey(name: 'country_calling_code')
      final String? countryCallingCode}) = _$ApiCountryDataImpl;

  factory _ApiCountryData.fromJson(Map<String, dynamic> json) =
      _$ApiCountryDataImpl.fromJson;

  @override
  @JsonKey(name: 'country_number')
  String? get countryNumber;
  @override
  @JsonKey(name: 'country_name')
  String? get countryName;
  @override
  @JsonKey(name: 'country_full_name')
  String? get countryFullName;
  @override
  @JsonKey(name: 'has_administrative_region')
  bool? get hasAdministrativeRegion;
  @override
  @JsonKey(name: 'country_calling_code')
  String? get countryCallingCode;

  /// Create a copy of ApiCountryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiCountryDataImplCopyWith<_$ApiCountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiProvinceData _$ApiProvinceDataFromJson(Map<String, dynamic> json) {
  return _ApiProvinceData.fromJson(json);
}

/// @nodoc
mixin _$ApiProvinceData {
  @JsonKey(name: 'province_number')
  String? get provinceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_name')
  String? get provinceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_full_name')
  String? get provinceFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_lat')
  num? get provinceLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_lng')
  num? get provinceLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  ApiCountryData? get country => throw _privateConstructorUsedError;

  /// Serializes this ApiProvinceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiProvinceDataCopyWith<ApiProvinceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiProvinceDataCopyWith<$Res> {
  factory $ApiProvinceDataCopyWith(
          ApiProvinceData value, $Res Function(ApiProvinceData) then) =
      _$ApiProvinceDataCopyWithImpl<$Res, ApiProvinceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'province_number') String? provinceNumber,
      @JsonKey(name: 'province_name') String? provinceName,
      @JsonKey(name: 'province_full_name') String? provinceFullName,
      @JsonKey(name: 'province_lat') num? provinceLat,
      @JsonKey(name: 'province_lng') num? provinceLng,
      @JsonKey(name: 'country') ApiCountryData? country});

  $ApiCountryDataCopyWith<$Res>? get country;
}

/// @nodoc
class _$ApiProvinceDataCopyWithImpl<$Res, $Val extends ApiProvinceData>
    implements $ApiProvinceDataCopyWith<$Res> {
  _$ApiProvinceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceNumber = freezed,
    Object? provinceName = freezed,
    Object? provinceFullName = freezed,
    Object? provinceLat = freezed,
    Object? provinceLng = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      provinceNumber: freezed == provinceNumber
          ? _value.provinceNumber
          : provinceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceFullName: freezed == provinceFullName
          ? _value.provinceFullName
          : provinceFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceLat: freezed == provinceLat
          ? _value.provinceLat
          : provinceLat // ignore: cast_nullable_to_non_nullable
              as num?,
      provinceLng: freezed == provinceLng
          ? _value.provinceLng
          : provinceLng // ignore: cast_nullable_to_non_nullable
              as num?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as ApiCountryData?,
    ) as $Val);
  }

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiCountryDataCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $ApiCountryDataCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiProvinceDataImplCopyWith<$Res>
    implements $ApiProvinceDataCopyWith<$Res> {
  factory _$$ApiProvinceDataImplCopyWith(_$ApiProvinceDataImpl value,
          $Res Function(_$ApiProvinceDataImpl) then) =
      __$$ApiProvinceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'province_number') String? provinceNumber,
      @JsonKey(name: 'province_name') String? provinceName,
      @JsonKey(name: 'province_full_name') String? provinceFullName,
      @JsonKey(name: 'province_lat') num? provinceLat,
      @JsonKey(name: 'province_lng') num? provinceLng,
      @JsonKey(name: 'country') ApiCountryData? country});

  @override
  $ApiCountryDataCopyWith<$Res>? get country;
}

/// @nodoc
class __$$ApiProvinceDataImplCopyWithImpl<$Res>
    extends _$ApiProvinceDataCopyWithImpl<$Res, _$ApiProvinceDataImpl>
    implements _$$ApiProvinceDataImplCopyWith<$Res> {
  __$$ApiProvinceDataImplCopyWithImpl(
      _$ApiProvinceDataImpl _value, $Res Function(_$ApiProvinceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceNumber = freezed,
    Object? provinceName = freezed,
    Object? provinceFullName = freezed,
    Object? provinceLat = freezed,
    Object? provinceLng = freezed,
    Object? country = freezed,
  }) {
    return _then(_$ApiProvinceDataImpl(
      provinceNumber: freezed == provinceNumber
          ? _value.provinceNumber
          : provinceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceFullName: freezed == provinceFullName
          ? _value.provinceFullName
          : provinceFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceLat: freezed == provinceLat
          ? _value.provinceLat
          : provinceLat // ignore: cast_nullable_to_non_nullable
              as num?,
      provinceLng: freezed == provinceLng
          ? _value.provinceLng
          : provinceLng // ignore: cast_nullable_to_non_nullable
              as num?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as ApiCountryData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApiProvinceDataImpl implements _ApiProvinceData {
  const _$ApiProvinceDataImpl(
      {@JsonKey(name: 'province_number') this.provinceNumber,
      @JsonKey(name: 'province_name') this.provinceName,
      @JsonKey(name: 'province_full_name') this.provinceFullName,
      @JsonKey(name: 'province_lat') this.provinceLat,
      @JsonKey(name: 'province_lng') this.provinceLng,
      @JsonKey(name: 'country') this.country});

  factory _$ApiProvinceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiProvinceDataImplFromJson(json);

  @override
  @JsonKey(name: 'province_number')
  final String? provinceNumber;
  @override
  @JsonKey(name: 'province_name')
  final String? provinceName;
  @override
  @JsonKey(name: 'province_full_name')
  final String? provinceFullName;
  @override
  @JsonKey(name: 'province_lat')
  final num? provinceLat;
  @override
  @JsonKey(name: 'province_lng')
  final num? provinceLng;
  @override
  @JsonKey(name: 'country')
  final ApiCountryData? country;

  @override
  String toString() {
    return 'ApiProvinceData(provinceNumber: $provinceNumber, provinceName: $provinceName, provinceFullName: $provinceFullName, provinceLat: $provinceLat, provinceLng: $provinceLng, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiProvinceDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provinceNumber, provinceName,
      provinceFullName, provinceLat, provinceLng, country);

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiProvinceDataImplCopyWith<_$ApiProvinceDataImpl> get copyWith =>
      __$$ApiProvinceDataImplCopyWithImpl<_$ApiProvinceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiProvinceDataImplToJson(
      this,
    );
  }
}

abstract class _ApiProvinceData implements ApiProvinceData {
  const factory _ApiProvinceData(
          {@JsonKey(name: 'province_number') final String? provinceNumber,
          @JsonKey(name: 'province_name') final String? provinceName,
          @JsonKey(name: 'province_full_name') final String? provinceFullName,
          @JsonKey(name: 'province_lat') final num? provinceLat,
          @JsonKey(name: 'province_lng') final num? provinceLng,
          @JsonKey(name: 'country') final ApiCountryData? country}) =
      _$ApiProvinceDataImpl;

  factory _ApiProvinceData.fromJson(Map<String, dynamic> json) =
      _$ApiProvinceDataImpl.fromJson;

  @override
  @JsonKey(name: 'province_number')
  String? get provinceNumber;
  @override
  @JsonKey(name: 'province_name')
  String? get provinceName;
  @override
  @JsonKey(name: 'province_full_name')
  String? get provinceFullName;
  @override
  @JsonKey(name: 'province_lat')
  num? get provinceLat;
  @override
  @JsonKey(name: 'province_lng')
  num? get provinceLng;
  @override
  @JsonKey(name: 'country')
  ApiCountryData? get country;

  /// Create a copy of ApiProvinceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiProvinceDataImplCopyWith<_$ApiProvinceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
