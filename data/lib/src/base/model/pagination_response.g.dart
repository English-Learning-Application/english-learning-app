// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseImpl<T> _$$PaginationResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationResponseImpl<T>(
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      statusCode: (json['status_code'] as num?)?.toInt(),
      message: json['message'] as String?,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationResponseImplToJson<T>(
  _$PaginationResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': instance.results?.map(toJsonT).toList(),
      'status_code': instance.statusCode,
      'message': instance.message,
      'next': instance.next,
      'prev': instance.prev,
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
    };
