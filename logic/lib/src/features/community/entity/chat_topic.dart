import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'chat_topic.freezed.dart';

@freezed
class ChatTopic with _$ChatTopic {
  const ChatTopic._();

  const factory ChatTopic({
    @Default(ChatTopic.defaultTopicId) String topicId,
    @Default(ChatTopic.defaultTopicLanguage) LearningLanguage topicLanguage,
    @Default(ChatTopic.defaultTopicNameEnglish) String topicNameEnglish,
    @Default(ChatTopic.defaultTopicNameVietnamese) String topicNameVietnamese,
    @Default(ChatTopic.defaultTopicNameFrench) String topicNameFrench,
    @Default(ChatTopic.defaultTopicDescription) String topicDescription,
    @Default(ChatTopic.defaultSessions) List<ChatSession> sessions,
    @Default(ChatTopic.defaultTopicCreatedAt) DateTime? createdAt,
    @Default(ChatTopic.defaultTopicUpdatedAt) DateTime? updatedAt,
  }) = _ChatTopic;

  static const defaultTopicId = '';
  static const LearningLanguage defaultTopicLanguage = LearningLanguage.english;
  static const defaultTopicNameEnglish = '';
  static const defaultTopicNameVietnamese = '';
  static const defaultTopicNameFrench = '';
  static const defaultTopicDescription = '';
  static const List<ChatSession> defaultSessions = [];
  static const DateTime? defaultTopicCreatedAt = null;
  static const DateTime? defaultTopicUpdatedAt = null;
}
