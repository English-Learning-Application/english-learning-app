import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data.dart';

part 'api_chat_session_data.freezed.dart';
part 'api_chat_session_data.g.dart';

@freezed
class ApiChatSessionData with _$ApiChatSessionData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiChatSessionData({
    @JsonKey(name: 'sessionId') String? sessionId,
    @JsonKey(name: 'sessionName') String? sessionName,
    @JsonKey(name: 'sessionType') String? sessionType,
    @JsonKey(name: 'users') List<ApiMessageUserData>? users,
    @JsonKey(name: 'messages') List<ApiChatMessageData>? messages,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiChatSessionData;

  factory ApiChatSessionData.fromJson(Map<String, dynamic> json) =>
      _$ApiChatSessionDataFromJson(json);
}
