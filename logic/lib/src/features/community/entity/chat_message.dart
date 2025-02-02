import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();
  const factory ChatMessage({
    @Default(ChatMessage.defaultMessageId) String messageId,
    @Default(ChatMessage.defaultMessageText) String messageText,
    @Default(ChatMessage.defaultSentAt) DateTime? sentAt,
    @Default(ChatMessage.defaultMessageSender) MessageUser sender,
  }) = _ChatMessage;

  static const defaultMessageId = '';
  static const defaultMessageText = '';
  static const DateTime? defaultSentAt = null;
  static const MessageUser defaultMessageSender = MessageUser();
}
