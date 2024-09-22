import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@Injectable()
class ApiAppNotificationDataMapper
    extends BaseDataMapper<ApiNotificationData, AppNotification> {
  @override
  AppNotification mapToEntity(ApiNotificationData? data) {
    return AppNotification(
      message: data?.message ?? AppNotification.defaultMessage,
      title: data?.title ?? AppNotification.defaultTitle,
      image: data?.image ?? AppNotification.defaultImage,
      notificationId:
          data?.notificationId ?? AppNotification.defaultNotificationId,
    );
  }
}
