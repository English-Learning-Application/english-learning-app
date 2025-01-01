import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_token_data.freezed.dart';
part 'api_token_data.g.dart';

@freezed
class ApiTokenData with _$ApiTokenData {
  const ApiTokenData._();

  const factory ApiTokenData({
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
  }) = _ApiTokenData;

  factory ApiTokenData.fromJson(Map<String, dynamic> json) =>
      _$ApiTokenDataFromJson(json);
}
