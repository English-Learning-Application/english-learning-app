import 'package:dartx/dartx.dart';
import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';

@Injectable()
class ApiMediaDataMapper extends BaseDataMapper<ApiMediaData, Media>
    with DataMapperMixin<ApiMediaData, Media> {
  @override
  Media mapToEntity(ApiMediaData? data) {
    return Media(
      mediaType: MediaType.values.firstOrNullWhere(
            (element) => element.serverValue == data?.mediaType,
          ) ??
          Media.defaultMediaType,
      mediaId: data?.mediaId ?? Media.defaultMediaId,
      mediaUrl: data?.mediaUrl ?? Media.defaultMediaUrl,
    );
  }

  @override
  ApiMediaData mapToData(Media entity) {
    return ApiMediaData(
      mediaType: entity.mediaType.serverValue,
      mediaId: entity.mediaId,
      mediaUrl: entity.mediaUrl,
    );
  }
}
