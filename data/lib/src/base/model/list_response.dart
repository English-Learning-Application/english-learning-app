import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_response.freezed.dart';
part 'list_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ListResponse<T> with _$ListResponse<T> {
  const factory ListResponse({
    @JsonKey(name: 'results') List<T>? results,
    @JsonKey(name: 'status_code') int? statusCode,
    @JsonKey(name: 'message') String? message,
  }) = _ListResponse<T>;

  factory ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ListResponseFromJson(json, fromJsonT);
}
