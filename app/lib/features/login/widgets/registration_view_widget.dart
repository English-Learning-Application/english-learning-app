import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class RegistrationViewWidget extends StatefulWidget {
  const RegistrationViewWidget({super.key});

  @override
  State<RegistrationViewWidget> createState() => _RegistrationViewWidgetState();
}

class _RegistrationViewWidgetState extends State<RegistrationViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.images.appIcon.image(
          width: Dimens.d160.responsive(),
          height: Dimens.d160.responsive(),
        ),
        SizedBox(
          height: Dimens.d20.responsive(),
        ),
        Text(
          S.current.register,
          style: AppTextStyles.s14w400primary().bold.font20(),
        ),
      ],
    );
  }
}
