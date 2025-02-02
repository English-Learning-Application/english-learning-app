import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiMessageUserDataMapper
    extends BaseDataMapper<ApiMessageUserData, MessageUser>
    with DataMapperMixin {
  @override
  ApiMessageUserData mapToData(MessageUser entity) {
    return ApiMessageUserData(
      userId: entity.userId,
      username: entity.username,
      imageUrl: entity.imageUrl,
      email: entity.email,
      phoneNumber: entity.phoneNumber,
      externalUserId: entity.externalId,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  MessageUser mapToEntity(ApiMessageUserData? data) {
    return MessageUser(
      userId: data?.userId ?? MessageUser.defaultUserId,
      username: data?.username ?? MessageUser.defaultUsername,
      imageUrl: data?.imageUrl ?? MessageUser.defaultImageUrl,
      email: data?.email ?? MessageUser.defaultEmail,
      externalId: data?.externalUserId
          ?? MessageUser.defaultExternalId,
      phoneNumber: data?.phoneNumber ?? MessageUser.defaultPhoneNumber,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt ?? ''),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt ?? ''),
    );
  }
}
