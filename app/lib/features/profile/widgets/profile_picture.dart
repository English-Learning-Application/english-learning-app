import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../../../app.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.border,
    required this.onPressed,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxBorder? border;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        imageUrl != null
            ? CircularAvatar(
                imageUrl: imageUrl,
                width: width ?? Dimens.d60.responsive(),
                height: height ?? Dimens.d60.responsive(),
                border: border,
              )
            : CircularAvatar(
                image: Assets.images.appIcon.image(
                  width: Dimens.d60.responsive(),
                  height: Dimens.d60.responsive(),
                  fit: BoxFit.cover,
                ),
                width: width ?? Dimens.d60.responsive(),
                height: height ?? Dimens.d60.responsive(),
                border: border,
              ),
        Positioned(
          bottom: 0,
          right: Dimens.d10.responsive(),
          child: InkWell(
            onTap: onPressed,
            child: Icon(
              Icons.camera_alt,
              color: AppColors.current.primaryColor,
              size: Dimens.d24.responsive(),
            ),
          ),
        ),
      ],
    );
  }
}
