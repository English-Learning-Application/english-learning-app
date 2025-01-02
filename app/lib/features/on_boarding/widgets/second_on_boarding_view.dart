import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';
class SecondOnBoardingView extends StatelessWidget {
  const SecondOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ClipPath(
            clipper: SecondOnBoardingClipper(),
            child: Assets.images.onboard02.image(
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: Dimens.d10.responsive(),),
          Text(
            S.current.multiLanguage,
            style: AppTextStyles.s14w400primary().font30().bold.primary50,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              S.current.multiLanguageDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.s14w400primary().font20(),
            ),
          ),
        ],
      ),
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