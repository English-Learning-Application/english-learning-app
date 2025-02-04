import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

class ThirdOnBoardingView extends StatelessWidget {
  const ThirdOnBoardingView({super.key});

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
            clipper: ThirdOnBoardingClipper(),
            child: Assets.icons.icOnboarding3.svg(
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
            S.current.trackYourProgress,
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
            S.current.trackYourProgressDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font20(),
          ),
        ),
      ],
    );
  }
}

class ThirdOnBoardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.9);
    final firstControlPoint = Offset(size.width * 0.25, size.height);
    final firstEndPoint = Offset(size.width * 0.5, size.height * 0.9);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    final secondControlPoint = Offset(size.width * 0.75, size.height * 0.8);
    final secondEndPoint = Offset(size.width, size.height * 0.9);

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
