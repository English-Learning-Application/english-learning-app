import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

class FirstOnBoardingView extends StatelessWidget {
  const FirstOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.zero,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipPath(
            clipper: FirstOnBoardingClipper(),
            child: Assets.icons.icOnboarding1.svg(
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: Dimens.d10.responsive(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d8.responsive(),
          ),
          child: Text(
            S.current.learnAnywhere,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font30().bold.primary50,
          ),
        ),
        SizedBox(
          height: Dimens.d10.responsive(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d8.responsive(),
          ),
          child: Text(
            S.current.learnAnywhereDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font20(),
          ),
        ),
      ],
    );
  }
}

class FirstOnBoardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height * 0.95);

    final firstControlPoint = Offset(size.width * 0.25, size.height * 0.8);
    final firstEndPoint = Offset(size.width * 0.5, size.height * 0.9);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(size.width * 0.75, size.height);
    final secondEndPoint = Offset(size.width, size.height * 0.9);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
