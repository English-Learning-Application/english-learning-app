import 'dart:io';

import 'package:app/app.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagesProvider {
  const ImagesProvider._();
  static Widget networkImage({
    required String imageUrl,
    double? height,
    double? width,
    BoxFit? fit,
    double? borderRadius,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius ?? Dimens.d8.responsive(),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        placeholder: (_, url) =>
            const Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }

  static Widget fileImage({
    required String imagePath,
    double? height,
    double? width,
    BoxFit? fit,
    double? borderRadius,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius ?? Dimens.d8.responsive(),
      ),
      child: Image.file(
        File.fromUri(Uri.parse(imagePath)),
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
      ),
    );
  }
}
