import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../services.dart';

@Injectable()
class AppNotificationTypeServiceMapper
    extends BaseServiceMapper<String, NotificationType> {
  AppNotificationTypeServiceMapper();

  @override
  NotificationType mapToOutput(String? data) {
    return NotificationType.values.firstWhere(
      (element) => element.name == data,
      orElse: () => NotificationType.defaultValue,
    );
  }
}
