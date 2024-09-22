import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'media.freezed.dart';

@freezed
class Media with _$Media {
  const Media._();
  const factory Media({
    @Default(Media.defaultMediaNumber) String mediaNumber,
    @Default(Media.defaultMediaUrl) String mediaUrl,
    @Default(Media.defaultMediaUrlLg) String mediaUrlLg,
    @Default(Media.defaultMediaUrlMd) String mediaUrlMd,
    @Default(Media.defaultMediaUrlSm) String mediaUrlSm,
    @Default(Media.defaultMediaType) MediaType mediaType,
  }) = _Media;

  static const defaultMediaNumber = '';
  static const defaultMediaUrl = '';
  static const defaultMediaUrlLg = '';
  static const defaultMediaUrlMd = '';
  static const defaultMediaUrlSm = '';
  static const MediaType defaultMediaType = MediaType.image;

  static const Media empty = Media();
}
