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
      mediaNumber: data?.mediaNumber ?? Media.defaultMediaNumber,
      mediaUrl: data?.mediaUrl ?? Media.defaultMediaUrl,
      mediaUrlLg: data?.mediaUrlLg ?? Media.defaultMediaUrlLg,
      mediaUrlMd: data?.mediaUrlMd ?? Media.defaultMediaUrlMd,
      mediaUrlSm: data?.mediaUrlSm ?? Media.defaultMediaUrlSm,
    );
  }

  @override
  ApiMediaData mapToData(Media entity) {
    return ApiMediaData(
      mediaType: entity.mediaType.serverValue,
      mediaNumber: entity.mediaNumber,
      mediaUrl: entity.mediaUrl,
      mediaUrlLg: entity.mediaUrlLg,
      mediaUrlMd: entity.mediaUrlMd,
      mediaUrlSm: entity.mediaUrlSm,
    );
  }
}
