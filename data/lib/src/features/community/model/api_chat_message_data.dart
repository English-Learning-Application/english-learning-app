import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data.dart';

part 'api_chat_message_data.freezed.dart';
part 'api_chat_message_data.g.dart';

@freezed
class ApiChatMessageData with _$ApiChatMessageData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiChatMessageData({
    @JsonKey(name: 'messageId') String? messageId,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'sender') ApiMessageUserData? sender,
    @JsonKey(name: 'chatMessageType') String? chatMessageType,
    @JsonKey(name: 'sentAt') String? sentAt,
  }) = _ApiChatMessageData;

  factory ApiChatMessageData.fromJson(Map<String, dynamic> json) =>
      _$ApiChatMessageDataFromJson(json);
}
