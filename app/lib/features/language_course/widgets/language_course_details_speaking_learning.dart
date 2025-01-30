import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class LanguageCourseDetailsSpeakingLearning extends StatelessWidget {
  const LanguageCourseDetailsSpeakingLearning({
    super.key,
    required this.phoneticsList,
    required this.learningLanguage,
    required this.onStartLearning,
  });

  final List<Phonetic> phoneticsList;
  final LearningLanguage learningLanguage;
  final VoidCallback onStartLearning;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Text(
          S.current.phonetic,
          style: AppTextStyles.s14w400primary().bold,
        ),
        SizedBox(height: Dimens.d8.responsive()),
        Expanded(
          child: ListView.separated(
            itemCount: phoneticsList.length,
            separatorBuilder: (_, __) =>
                SizedBox(height: Dimens.d12.responsive()),
            itemBuilder: (_, index) {
              final phonetic = phoneticsList[index];
              final phoneticText = phonetic.phoneticSymbol;
              final phoneticSound = phonetic.phoneticSound;
              final pronunciationGuide = switch (learningLanguage) {
                LearningLanguage.english => phonetic.englishPhoneticGuide,
                LearningLanguage.vietnamese => phonetic.vietnamesePhoneticGuide,
                LearningLanguage.french => phonetic.frenchPhoneticGuide,
              };
              return _PhoneticWidgetItem(
                phonetic: phoneticText,
                phoneticSound: phoneticSound,
                pronunciationGuide: pronunciationGuide,
                learningLanguage: learningLanguage,
              );
            },
          ),
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        StandardButton(
          text: S.current.startLearning,
          buttonSize: ButtonSize.small,
          onPressed: onStartLearning,
        )
      ],
    );
  }
}

class _PhoneticWidgetItem extends StatelessWidget {
  const _PhoneticWidgetItem({
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
                      .read<LanguageCourseDetailsViewModel>()
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
