import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic/logic.dart';

part 'chat_session.freezed.dart';

@freezed
class ChatSession with _$ChatSession {
  const ChatSession._();
  const factory ChatSession({
    @Default(ChatSession.defaultSessionId) String sessionId,
    @Default(ChatSession.defaultSessionName) String sessionName,
    @Default(ChatSession.defaultSessionType) ChatType sessionType,
    @Default(ChatSession.defaultMessages) List<ChatMessage> messages,
    @Default(ChatSession.defaultParticipants) List<MessageUser> participants,
    @Default(ChatSession.defaultMessageCreatedAt) DateTime? createdAt,
    @Default(ChatSession.defaultMessageUpdatedAt) DateTime? updatedAt,
  }) = _ChatSession;

  static const defaultSessionId = '';
  static const defaultSessionName = '';
  static const ChatType defaultSessionType = ChatType.privateChat;
  static const List<ChatMessage> defaultMessages = [];
  static const List<MessageUser> defaultParticipants = [];
  static const DateTime? defaultMessageCreatedAt = null;
  static const DateTime? defaultMessageUpdatedAt = null;
}
