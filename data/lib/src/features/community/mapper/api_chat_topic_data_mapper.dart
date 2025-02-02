import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiChatTopicDataMapper extends BaseDataMapper<ApiChatTopicData, ChatTopic>
    with DataMapperMixin {
  final ApiChatSessionDataMapper _apiChatSessionDataMapper;

  const ApiChatTopicDataMapper(this._apiChatSessionDataMapper);

  @override
  ApiChatTopicData mapToData(ChatTopic entity) {
    return ApiChatTopicData(
      topicId: entity.topicId,
      topicLanguage: entity.topicLanguage.serverValue,
      topicNameEnglish: entity.topicNameEnglish,
      topicNameVietnamese: entity.topicNameVietnamese,
      topicNameFrench: entity.topicNameFrench,
      topicDescription: entity.topicDescription,
      sessions: _apiChatSessionDataMapper.mapToListData(entity.sessions),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  ChatTopic mapToEntity(ApiChatTopicData? data) {
    return ChatTopic(
      topicId: data?.topicId ?? ChatTopic.defaultTopicId,
      topicLanguage: LearningLanguage.fromServerValue(data?.topicLanguage),
      topicNameEnglish:
          data?.topicNameEnglish ?? ChatTopic.defaultTopicNameEnglish,
      topicNameVietnamese:
          data?.topicNameVietnamese ?? ChatTopic.defaultTopicNameVietnamese,
      topicNameFrench:
          data?.topicNameFrench ?? ChatTopic.defaultTopicNameFrench,
      topicDescription:
          data?.topicDescription ?? ChatTopic.defaultTopicDescription,
      sessions: _apiChatSessionDataMapper.mapToListEntities(data?.sessions),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
