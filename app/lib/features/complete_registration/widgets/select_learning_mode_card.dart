import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class SelectLearningModeCard extends StatelessWidget {
  const SelectLearningModeCard({
    super.key,
    required this.learningType,
    required this.onTap,
    this.isSelected = false,
    required this.learningTypeIcon,
  });

  final LearningType learningType;
  final VoidCallback onTap;
  final bool isSelected;
  final Widget learningTypeIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimens.d16.responsive(),
          ),
          border: Border.all(
            color: isSelected
                ? AppColors.current.primaryColor
                : FoundationColors.neutral900,
            width: Dimens.d1.responsive(),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.d16.responsive(),
          vertical: Dimens.d12.responsive(),
        ),
        child: Row(
          children: [
            learningTypeIcon,
            SizedBox(
              width: Dimens.d8.responsive(),
            ),
            Text(
              learningType.learningTypeName,
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
