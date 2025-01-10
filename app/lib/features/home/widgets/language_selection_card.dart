import 'package:app/app.dart';
import 'package:flutter/material.dart';

class LanguageSelectionCard extends StatelessWidget {
  const LanguageSelectionCard({
    super.key,
    required this.icon,
    required this.languageName,
    required this.onTap,
  });

  final Widget icon;
  final String languageName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
      child: Container(
        width: Dimens.d100.responsive(),
        decoration: BoxDecoration(
          color: AppColors.current.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
        ),
        padding: EdgeInsets.all(Dimens.d8.responsive()),
        child: Column(
          children: [
            icon,
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Text(
              languageName,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.s14w400primary().font16().medium,
            ),
          ],
        ),
      ),
    );
  }
}
