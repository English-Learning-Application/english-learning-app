import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';

import '../../../app.dart';

class BookmarkCourseItem extends StatelessWidget {
  const BookmarkCourseItem({
    super.key,
    required this.learningLanguage,
    required this.courseType,
    required this.courseName,
    required this.progress,
    required this.onTap,
  });

  final String courseName;
  final LearningLanguage learningLanguage;
  final CourseType courseType;
  final double progress;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.d16.responsive(),
          vertical: Dimens.d8.responsive(),
        ),
        decoration: BoxDecoration(
          color: AppColors.current.backgroundColor,
          borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
          border: Border(
            top: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d2.responsive(),
            ),
            left: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d4.responsive(),
            ),
            right: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d4.responsive(),
            ),
            bottom: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d4.responsive(),
            ),
          ),
        ),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: AppTextStyles.s14w400primary().font16().bold,
                  ),
                  SizedBox(height: Dimens.d4.responsive()),
                  Text(
                    courseType.courseTypeName,
                    style: AppTextStyles.s14w400primary().font12().light,
                  ),
                  SizedBox(height: Dimens.d8.responsive()),
                  LinearProgressIndicator(
                    value: progress,
                    borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                    backgroundColor: FoundationColors.neutral200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.current.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: Dimens.d8.responsive()),
            learningLanguage.icon.svg(
              width: Dimens.d32.responsive(),
              height: Dimens.d32.responsive(),
            ),
          ],
        ),
      ),
    );
  }
}
