import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagesProvider {
  static CachedNetworkImage networkImage({
    required String imageUrl,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit ?? BoxFit.contain,
      placeholder: (_, url) => const CircularProgressIndicator.adaptive(),
    );
  }
}
