import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_message_user_data.freezed.dart';
part 'api_message_user_data.g.dart';

@freezed
class ApiMessageUserData with _$ApiMessageUserData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiMessageUserData({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'externalUserId') String? externalUserId,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiMessageUserData;
  factory ApiMessageUserData.fromJson(Map<String, dynamic> json) =>
      _$ApiMessageUserDataFromJson(json);
}
