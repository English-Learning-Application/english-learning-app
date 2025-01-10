import 'package:app/app.dart';
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({
    super.key,
    this.imageUrl,
    this.image,
    this.width,
    this.height,
    this.border,
  }) : assert(
          imageUrl != null || image != null,
          'Either imageUrl or image must be provided',
        );

  final Widget? image;
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: border,
      ),
      width: width ?? Dimens.d60.responsive(),
      height: height ?? Dimens.d60.responsive(),
      child: Center(
        child: ClipOval(
          child: image ??
              ImagesProvider.networkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                width: width ?? Dimens.d60.responsive(),
                height: height ?? Dimens.d60.responsive(),
              ),
        ),
      ),
    );
  }
}
