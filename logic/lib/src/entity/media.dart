import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'media.freezed.dart';

@freezed
class Media with _$Media {
  const Media._();
  const factory Media({
    @Default(Media.defaultMediaId) String mediaId,
    @Default(Media.defaultMediaUrl) String mediaUrl,
    @Default(Media.defaultMediaType) MediaType mediaType,
  }) = _Media;

  static const defaultMediaId = '';
  static const defaultMediaUrl = '';
  static const MediaType defaultMediaType = MediaType.image;

  static const Media empty = Media();
}
