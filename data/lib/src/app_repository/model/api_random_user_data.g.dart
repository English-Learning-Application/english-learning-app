// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_random_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiRandomUserDataImpl _$$ApiRandomUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserDataImpl(
      gender: json['gender'] as String?,
      name: json['name'] == null
          ? null
          : ApiRandomUserNameData.fromJson(
              json['name'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : ApiRandomUserLocationData.fromJson(
              json['location'] as Map<String, dynamic>),
      email: json['email'] as String?,
      login: json['login'] == null
          ? null
          : ApiRandomUserLoginData.fromJson(
              json['login'] as Map<String, dynamic>),
      dob: json['dob'] == null
          ? null
          : ApiRandomUserDobData.fromJson(json['dob'] as Map<String, dynamic>),
      registered: json['registered'] == null
          ? null
          : ApiRandomUserDobData.fromJson(
              json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      cell: json['cell'] as String?,
      id: json['id'] == null
          ? null
          : ApiRandomUserIdData.fromJson(json['id'] as Map<String, dynamic>),
      picture: json['picture'] == null
          ? null
          : ApiRandomUserPictureData.fromJson(
              json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserDataImplToJson(
        _$ApiRandomUserDataImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'login': instance.login,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'id': instance.id,
      'picture': instance.picture,
      'nat': instance.nat,
    };

_$ApiRandomUserDobDataImpl _$$ApiRandomUserDobDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserDobDataImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ApiRandomUserDobDataImplToJson(
        _$ApiRandomUserDobDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'age': instance.age,
    };

_$ApiRandomUserIdDataImpl _$$ApiRandomUserIdDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserIdDataImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserIdDataImplToJson(
        _$ApiRandomUserIdDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$ApiRandomUserLocationDataImpl _$$ApiRandomUserLocationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserLocationDataImpl(
      street: json['street'] == null
          ? null
          : ApiRandomUserStreetData.fromJson(
              json['street'] as Map<String, dynamic>),
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postcode: json['postcode'],
      coordinates: json['coordinates'] == null
          ? null
          : ApiRandomUserCoordinatesData.fromJson(
              json['coordinates'] as Map<String, dynamic>),
      timezone: json['timezone'] == null
          ? null
          : ApiRandomUserTimezoneData.fromJson(
              json['timezone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiRandomUserLocationDataImplToJson(
        _$ApiRandomUserLocationDataImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
      'coordinates': instance.coordinates,
      'timezone': instance.timezone,
    };

_$ApiRandomUserCoordinatesDataImpl _$$ApiRandomUserCoordinatesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserCoordinatesDataImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserCoordinatesDataImplToJson(
        _$ApiRandomUserCoordinatesDataImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$ApiRandomUserStreetDataImpl _$$ApiRandomUserStreetDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserStreetDataImpl(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserStreetDataImplToJson(
        _$ApiRandomUserStreetDataImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };

_$ApiRandomUserTimezoneDataImpl _$$ApiRandomUserTimezoneDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserTimezoneDataImpl(
      offset: json['offset'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserTimezoneDataImplToJson(
        _$ApiRandomUserTimezoneDataImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'description': instance.description,
    };

_$ApiRandomUserLoginDataImpl _$$ApiRandomUserLoginDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserLoginDataImpl(
      uuid: json['uuid'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
      md5: json['md5'] as String?,
      sha1: json['sha1'] as String?,
      sha256: json['sha256'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserLoginDataImplToJson(
        _$ApiRandomUserLoginDataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'md5': instance.md5,
      'sha1': instance.sha1,
      'sha256': instance.sha256,
    };

_$ApiRandomUserNameDataImpl _$$ApiRandomUserNameDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserNameDataImpl(
      title: json['title'] as String?,
      first: json['first'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserNameDataImplToJson(
        _$ApiRandomUserNameDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

_$ApiRandomUserPictureDataImpl _$$ApiRandomUserPictureDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRandomUserPictureDataImpl(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ApiRandomUserPictureDataImplToJson(
        _$ApiRandomUserPictureDataImpl instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
