import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';

@Injectable()
class AppThemeDataMapper extends BaseDataMapper<String, AppThemeType>
    with DataMapperMixin {
  @override
  AppThemeType mapToEntity(String? data) {
    return AppThemeType.values.firstWhere(
      (e) => e.serverValue == data,
      orElse: () => AppThemeType.system,
    );
  }

  @override
  String mapToData(AppThemeType entity) {
    return entity.serverValue;
  }
}
