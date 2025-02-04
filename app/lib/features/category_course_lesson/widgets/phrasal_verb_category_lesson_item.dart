import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class PhrasalVerbCategoryLessonItem extends StatelessWidget {
  const PhrasalVerbCategoryLessonItem({
    super.key,
    required this.phrasalVerb,
    required this.description,
    required this.learningLanguage,
  });

  final String phrasalVerb;
  final String description;
  final LearningLanguage learningLanguage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      decoration: BoxDecoration(
        color: AppColors.current.primaryColor,
        borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrasalVerb,
                  style: AppTextStyles.s14w400primary().secondary.bold.font16(),
                ),
                SizedBox(height: Dimens.d4.responsive()),
                Text(
                  description,
                  style: AppTextStyles.s14w400primary().font12().secondary,
                ),
              ],
            ),
          ),
          SizedBox(width: Dimens.d8.responsive()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  await context
                      .read<CategoryCourseLessonViewModel>()
                      .speakFromText(
                        phrasalVerb,
                        learningLanguage,
                      );
                },
                child: Icon(
                  Icons.volume_up,
                  color: AppColors.current.secondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
