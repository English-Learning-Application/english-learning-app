import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class LanguageCourseDetailsWritingLearning extends StatelessWidget {
  const LanguageCourseDetailsWritingLearning({
    super.key,
    required this.sentencesList,
    required this.learningLanguage,
    required this.onStartLearning,
  });

  final List<Sentence> sentencesList;
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
          S.current.sentence,
          style: AppTextStyles.s14w400primary().bold.font16(),
        ),
        SizedBox(height: Dimens.d8.responsive()),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (_, __) {
              return SizedBox(height: Dimens.d8.responsive());
            },
            itemBuilder: (_, index) {
              final sentence = sentencesList[index];
              final sentenceText = switch (learningLanguage) {
                LearningLanguage.english => sentence.englishSentence,
                LearningLanguage.vietnamese => sentence.vietnameseSentence,
                LearningLanguage.french => sentence.frenchSentence,
              };
              final example = sentence
                  .exampleUsage[learningLanguage.serverValue.toLowerCase()];
              return _SentenceWidgetItem(
                sentenceText: sentenceText,
                example: example,
                learningLanguage: learningLanguage,
              );
            },
            itemCount: sentencesList.length,
          ),
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        StandardButton(
          text: S.current.startLearning,
          buttonSize: ButtonSize.small,
          onPressed: onStartLearning,
        ),
      ],
    );
  }
}

class _SentenceWidgetItem extends StatelessWidget {
  const _SentenceWidgetItem({
    super.key,
    required this.sentenceText,
    required this.example,
    required this.learningLanguage,
  });

  final String sentenceText;
  final String example;
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
                  sentenceText,
                  style: AppTextStyles.s14w400primary().secondary.bold.font16(),
                ),
                SizedBox(height: Dimens.d4.responsive()),
                Text(
                  example,
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
                      .read<LanguageCourseDetailsViewModel>()
                      .speakFromText(
                        sentenceText,
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
