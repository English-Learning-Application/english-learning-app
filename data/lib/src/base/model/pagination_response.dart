import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationResponse<T> with _$PaginationResponse {
  const factory PaginationResponse({
    @JsonKey(name: 'results') List<T>? results,
    @JsonKey(name: 'status_code') int? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'prev') String? prev,
    @JsonKey(name: 'offset') int? offset,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'total') int? total,
  }) = _PaginationResponse<T>;

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationResponseFromJson(json, fromJsonT);
}
