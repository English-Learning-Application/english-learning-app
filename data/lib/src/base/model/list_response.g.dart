// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListResponseImpl<T> _$$ListResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ListResponseImpl<T>(
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      statusCode: (json['status_code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ListResponseImplToJson<T>(
  _$ListResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': instance.results?.map(toJsonT).toList(),
      'status_code': instance.statusCode,
      'message': instance.message,
    };
