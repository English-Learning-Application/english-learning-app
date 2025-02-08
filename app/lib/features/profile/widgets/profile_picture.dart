import 'dart:math';

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
            : Container(
                width: Dimens.d60.responsive(),
                height: Dimens.d60.responsive(),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: border,
                ),
                child: Center(
                  child: _randomAvatar.randomElement().svg(
                        width: Dimens.d60.responsive(),
                        height: Dimens.d60.responsive(),
                        fit: BoxFit.cover,
                      ),
                ),
              ),
        Positioned(
          bottom: 0,
          right: 0,
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

final List<SvgGenImage> _randomAvatar = [
  Assets.icons.icAvatar1,
  Assets.icons.icAvatar2,
  Assets.icons.icAvatar3,
  Assets.icons.icAvatar4,
];

extension _RandomElement<T> on List<T> {
  T randomElement() {
    return this[Random().nextInt(length)];
  }
}
