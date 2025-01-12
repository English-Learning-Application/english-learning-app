import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();
  const factory ChatMessage({
    @Default(ChatMessage.defaultMessageId) String messageId,
    @Default(ChatMessage.defaultMessageText) String messageText,
    @Default(ChatMessage.defaultMessageCreatedAt) DateTime? createdAt,
    @Default(ChatMessage.defaultMessageSender) String sender,
  }) = _ChatMessage;

  static const defaultMessageId = '';
  static const defaultMessageText = '';
  static const DateTime? defaultMessageCreatedAt = null;
  static const defaultMessageSender = '';
}
