// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_country_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiCountryDataImpl _$$ApiCountryDataImplFromJson(Map<String, dynamic> json) =>
    _$ApiCountryDataImpl(
      countryNumber: json['country_number'] as String?,
      countryName: json['country_name'] as String?,
      countryFullName: json['country_full_name'] as String?,
      hasAdministrativeRegion: json['has_administrative_region'] as bool?,
      countryCallingCode: json['country_calling_code'] as String?,
    );

Map<String, dynamic> _$$ApiCountryDataImplToJson(
        _$ApiCountryDataImpl instance) =>
    <String, dynamic>{
      'country_number': instance.countryNumber,
      'country_name': instance.countryName,
      'country_full_name': instance.countryFullName,
      'has_administrative_region': instance.hasAdministrativeRegion,
      'country_calling_code': instance.countryCallingCode,
    };

_$ApiProvinceDataImpl _$$ApiProvinceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiProvinceDataImpl(
      provinceNumber: json['province_number'] as String?,
      provinceName: json['province_name'] as String?,
      provinceFullName: json['province_full_name'] as String?,
      provinceLat: json['province_lat'] as num?,
      provinceLng: json['province_lng'] as num?,
      country: json['country'] == null
          ? null
          : ApiCountryData.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiProvinceDataImplToJson(
        _$ApiProvinceDataImpl instance) =>
    <String, dynamic>{
      'province_number': instance.provinceNumber,
      'province_name': instance.provinceName,
      'province_full_name': instance.provinceFullName,
      'province_lat': instance.provinceLat,
      'province_lng': instance.provinceLng,
      'country': instance.country?.toJson(),
    };
