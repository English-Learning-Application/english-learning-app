import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data.dart';

part 'api_user_data.freezed.dart';
part 'api_user_data.g.dart';

@freezed
class ApiUserData with _$ApiUserData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserData({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'googleId') String? googleId,
    @JsonKey(name: 'facebookId') String? facebookId,
    @JsonKey(name: 'phoneNumber') String? phone,
    @JsonKey(name: 'media') ApiMediaData? media,
  }) = _ApiUserData;

  factory ApiUserData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserDataFromJson(json);
}
