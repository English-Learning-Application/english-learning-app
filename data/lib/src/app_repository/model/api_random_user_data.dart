import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_random_user_data.freezed.dart';

part 'api_random_user_data.g.dart';

@freezed
class ApiRandomUserData with _$ApiRandomUserData {
  const factory ApiRandomUserData({
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "name") ApiRandomUserNameData? name,
    @JsonKey(name: "location") ApiRandomUserLocationData? location,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "login") ApiRandomUserLoginData? login,
    @JsonKey(name: "dob") ApiRandomUserDobData? dob,
    @JsonKey(name: "registered") ApiRandomUserDobData? registered,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "cell") String? cell,
    @JsonKey(name: "id") ApiRandomUserIdData? id,
    @JsonKey(name: "picture") ApiRandomUserPictureData? picture,
    @JsonKey(name: "nat") String? nat,
  }) = _ApiRandomUserData;

  factory ApiRandomUserData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserDataFromJson(json);
}

@freezed
class ApiRandomUserDobData with _$ApiRandomUserDobData {
  const factory ApiRandomUserDobData({
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "age") int? age,
  }) = _ApiRandomUserDobData;

  factory ApiRandomUserDobData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserDobDataFromJson(json);
}

@freezed
class ApiRandomUserIdData with _$ApiRandomUserIdData {
  const factory ApiRandomUserIdData({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "value") String? value,
  }) = _ApiRandomUserIdData;

  factory ApiRandomUserIdData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserIdDataFromJson(json);
}

@freezed
class ApiRandomUserLocationData with _$ApiRandomUserLocationData {
  const factory ApiRandomUserLocationData({
    @JsonKey(name: "street") ApiRandomUserStreetData? street,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "postcode") dynamic postcode,
    @JsonKey(name: "coordinates") ApiRandomUserCoordinatesData? coordinates,
    @JsonKey(name: "timezone") ApiRandomUserTimezoneData? timezone,
  }) = _ApiRandomUserLocationData;

  factory ApiRandomUserLocationData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserLocationDataFromJson(json);
}

@freezed
class ApiRandomUserCoordinatesData with _$ApiRandomUserCoordinatesData {
  const factory ApiRandomUserCoordinatesData({
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
  }) = _ApiRandomUserCoordinatesData;

  factory ApiRandomUserCoordinatesData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserCoordinatesDataFromJson(json);
}

@freezed
class ApiRandomUserStreetData with _$ApiRandomUserStreetData {
  const factory ApiRandomUserStreetData({
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "name") String? name,
  }) = _ApiRandomUserStreetData;

  factory ApiRandomUserStreetData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserStreetDataFromJson(json);
}

@freezed
class ApiRandomUserTimezoneData with _$ApiRandomUserTimezoneData {
  const factory ApiRandomUserTimezoneData({
    @JsonKey(name: "offset") String? offset,
    @JsonKey(name: "description") String? description,
  }) = _ApiRandomUserTimezoneData;

  factory ApiRandomUserTimezoneData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserTimezoneDataFromJson(json);
}

@freezed
class ApiRandomUserLoginData with _$ApiRandomUserLoginData {
  const factory ApiRandomUserLoginData({
    @JsonKey(name: "uuid") String? uuid,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "salt") String? salt,
    @JsonKey(name: "md5") String? md5,
    @JsonKey(name: "sha1") String? sha1,
    @JsonKey(name: "sha256") String? sha256,
  }) = _ApiRandomUserLoginData;

  factory ApiRandomUserLoginData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserLoginDataFromJson(json);
}

@freezed
class ApiRandomUserNameData with _$ApiRandomUserNameData {
  const factory ApiRandomUserNameData({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "first") String? first,
    @JsonKey(name: "last") String? last,
  }) = _ApiRandomUserNameData;

  factory ApiRandomUserNameData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserNameDataFromJson(json);
}

@freezed
class ApiRandomUserPictureData with _$ApiRandomUserPictureData {
  const factory ApiRandomUserPictureData({
    @JsonKey(name: "large") String? large,
    @JsonKey(name: "medium") String? medium,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _ApiRandomUserPictureData;

  factory ApiRandomUserPictureData.fromJson(Map<String, dynamic> json) =>
      _$ApiRandomUserPictureDataFromJson(json);
}
