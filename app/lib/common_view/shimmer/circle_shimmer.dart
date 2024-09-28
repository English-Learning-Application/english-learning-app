import 'package:flutter/material.dart';

import '../../app.dart';

class CircleShimmer extends StatelessWidget {
  const CircleShimmer({
    super.key,
    this.diameter,
  });

  final double? diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter ?? Dimens.d32.responsive(),
      height: diameter ?? Dimens.d32.responsive(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
    );
  }
}
