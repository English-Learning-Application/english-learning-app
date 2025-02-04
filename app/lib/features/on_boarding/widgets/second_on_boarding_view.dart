import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

class SecondOnBoardingView extends StatelessWidget {
  const SecondOnBoardingView({super.key});

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
            clipper: SecondOnBoardingClipper(),
            child: Assets.icons.icOnboarding2.svg(
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
            S.current.multiLanguage,
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
            S.current.multiLanguageDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font20(),
          ),
        ),
      ],
    );
  }
}

class SecondOnBoardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.9);

    final firstControlPoint = Offset(size.width * 0.2, size.height * 0.9);
    final firstEndPoint = Offset(size.width * 0.4, size.height * 0.95);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(size.width * 0.6, size.height);
    final secondEndPoint = Offset(size.width * 0.8, size.height * 0.9);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    final thirdControlPoint = Offset(size.width * 0.95, size.height * 0.85);
    final thirdEndPoint = Offset(size.width, size.height * 0.9);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
