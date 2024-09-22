import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';

@Injectable()
class ApiCountryDataMapper extends BaseDataMapper<ApiCountryData, Country>
    with DataMapperMixin<ApiCountryData, Country> {
  @override
  Country mapToEntity(ApiCountryData? data) {
    return Country(
      countryNumber: data?.countryNumber ?? Country.defaultCountryNumber,
      countryName: data?.countryName ?? Country.defaultCountryName,
      countryCallingCode:
          data?.countryCallingCode ?? Country.defaultCountryCallingCode,
      countryFullName: data?.countryFullName ?? Country.defaultCountryFullName,
      hasAdministrativeRegion: data?.hasAdministrativeRegion ??
          Country.defaultHasAdministrativeRegion,
    );
  }

  @override
  ApiCountryData mapToData(Country entity) {
    return ApiCountryData(
      countryNumber: entity.countryNumber,
      countryName: entity.countryName,
      countryCallingCode: entity.countryCallingCode,
      countryFullName: entity.countryFullName,
      hasAdministrativeRegion: entity.hasAdministrativeRegion,
    );
  }
}
