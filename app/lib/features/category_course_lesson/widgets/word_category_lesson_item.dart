import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class WordCategoryLessonItem extends StatelessWidget {
  const WordCategoryLessonItem({
    super.key,
    required this.word,
    required this.pronunciation,
    required this.typeOfWord,
    required this.learningLanguage,
  });

  final String word;
  final String pronunciation;
  final String typeOfWord;
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
                  word,
                  style: AppTextStyles.s14w400primary().secondary.bold.font16(),
                ),
                SizedBox(height: Dimens.d4.responsive()),
                Text(
                  pronunciation,
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
                typeOfWord,
                style: AppTextStyles.s14w400primary().font12().secondary,
              ),
              SizedBox(
                height: Dimens.d4.responsive(),
              ),
              GestureDetector(
                onTap: () async {
                  await context
                      .read<CategoryCourseLessonViewModel>()
                      .speakFromText(
                        word,
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
