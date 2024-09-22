import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    @Default(Country.defaultCountryNumber) String countryNumber,
    @Default(Country.defaultCountryName) String countryName,
    @Default(Country.defaultCountryFullName) String countryFullName,
    @Default(Country.defaultHasAdministrativeRegion)
    bool hasAdministrativeRegion,
    @Default(Country.defaultCountryCallingCode) String countryCallingCode,
  }) = _Country;

  static const defaultCountryNumber = '';
  static const defaultCountryName = '';
  static const defaultCountryFullName = '';
  static const bool defaultHasAdministrativeRegion = false;
  static const defaultCountryCallingCode = '';

  static const Country empty = Country();
}

@freezed
class Province with _$Province {
  const factory Province({
    @Default(Province.defaultProvinceNumber) String provinceNumber,
    @Default(Province.defaultProvinceName) String provinceName,
    @Default(Province.defaultProvinceFullName) String provinceFullName,
    @Default(Province.defaultProvinceLat) num provinceLat,
    @Default(Province.defaultProvinceLng) num provinceLng,
    @Default(Province.defaultCountry) Country country,
  }) = _Province;

  static const defaultProvinceNumber = '';
  static const defaultProvinceName = '';
  static const defaultProvinceFullName = '';
  static const num defaultProvinceLat = 0;
  static const num defaultProvinceLng = 0;
  static const Country defaultCountry = Country.empty;

  static const Province empty = Province();
}
