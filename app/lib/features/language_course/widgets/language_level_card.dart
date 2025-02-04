import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class LanguageLevelCard extends StatelessWidget {
  const LanguageLevelCard({
    super.key,
    required this.level,
    this.isSelected = false,
    required this.onTap,
  });

  final LanguageLevel level;
  final bool isSelected;
  final void Function(LanguageLevel) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(level),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Dimens.d8.responsive(),
          horizontal: Dimens.d16.responsive(),
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.current.primaryColor.withValues(alpha: 0.8)
              : AppColors.current.backgroundColor,
          borderRadius: BorderRadius.circular(Dimens.d24.responsive()),
          border: Border(
            top: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d1.responsive(),
            ),
            bottom: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d3.responsive(),
            ),
            left: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d1.responsive(),
            ),
            right: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d1.responsive(),
            ),
          ),
        ),
        child: Center(
          child: Text(
            level.levelName,
            style: AppTextStyles.s14w400primary().font16().medium.let(
                  (it) => isSelected
                      ? it.copyWith(color: AppColors.current.backgroundColor)
                      : it.copyWith(color: AppColors.current.primaryColor),
                ),
          ),
        ),
      ),
    );
  }
}
