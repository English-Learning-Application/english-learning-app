import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class SelectLanguageCard extends StatelessWidget {
  const SelectLanguageCard({
    super.key,
    required this.countryIcon,
    required this.languageName,
    required this.onTap,
    this.isSelected = false,
  });
  final Widget countryIcon;
  final LearningLanguage languageName;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimens.d16.responsive(),
          ),
          border: Border(
            top: BorderSide(
              color: isSelected
                  ? AppColors.current.primaryColor
                  : FoundationColors.neutral900,
              width: Dimens.d1.responsive(),
            ),
            right: BorderSide(
              color: isSelected
                  ? AppColors.current.primaryColor
                  : FoundationColors.neutral900,
              width: Dimens.d1.responsive(),
            ),
            left: BorderSide(
              color: isSelected
                  ? AppColors.current.primaryColor
                  : FoundationColors.neutral900,
              width: Dimens.d1.responsive(),
            ),
            bottom: BorderSide(
              color: isSelected
                  ? AppColors.current.primaryColor
                  : FoundationColors.neutral900,
              width: Dimens.d3.responsive(),
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.d16.responsive(),
          vertical: Dimens.d12.responsive(),
        ),
        child: Row(
          children: [
            countryIcon,
            SizedBox(
              width: Dimens.d8.responsive(),
            ),
            Text(
              languageName.languageName,
              style: AppTextStyles.s14w400primary().font16().regular.let((it) {
                if (isSelected) {
                  return it.primary200.bold;
                }
                return it;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
