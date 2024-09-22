import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_country_data.freezed.dart';
part 'api_country_data.g.dart';

@freezed
class ApiCountryData with _$ApiCountryData {
  const factory ApiCountryData({
    @JsonKey(name: 'country_number') String? countryNumber,
    @JsonKey(name: 'country_name') String? countryName,
    @JsonKey(name: 'country_full_name') String? countryFullName,
    @JsonKey(name: 'has_administrative_region') bool? hasAdministrativeRegion,
    @JsonKey(name: 'country_calling_code') String? countryCallingCode,
  }) = _ApiCountryData;

  factory ApiCountryData.fromJson(Map<String, dynamic> json) =>
      _$ApiCountryDataFromJson(json);
}

@freezed
class ApiProvinceData with _$ApiProvinceData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiProvinceData({
    @JsonKey(name: 'province_number') String? provinceNumber,
    @JsonKey(name: 'province_name') String? provinceName,
    @JsonKey(name: 'province_full_name') String? provinceFullName,
    @JsonKey(name: 'province_lat') num? provinceLat,
    @JsonKey(name: 'province_lng') num? provinceLng,
    @JsonKey(name: 'country') ApiCountryData? country,
  }) = _ApiProvinceData;

  factory ApiProvinceData.fromJson(Map<String, dynamic> json) =>
      _$ApiProvinceDataFromJson(json);
}
