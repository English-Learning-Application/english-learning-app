import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class PhoneticCategoryLessonItem extends StatelessWidget {
  const PhoneticCategoryLessonItem({
    super.key,
    required this.phonetic,
    required this.phoneticSound,
    required this.pronunciationGuide,
    required this.learningLanguage,
  });

  final String phonetic;
  final String phoneticSound;
  final String pronunciationGuide;
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
                  phonetic,
                  style: AppTextStyles.s14w400primary().secondary.bold.font16(),
                ),
                SizedBox(height: Dimens.d4.responsive()),
                Text(
                  pronunciationGuide,
                  style: AppTextStyles.s14w400primary().font12().secondary,
                ),
              ],
            ),
          ),
          SizedBox(width: Dimens.d8.responsive()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                phoneticSound,
                style: AppTextStyles.s14w400primary().font12().secondary,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              GestureDetector(
                onTap: () async {
                  await context
                      .read<CategoryCourseLessonViewModel>()
                      .speakFromText(
                        phonetic,
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
