import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class LanguageCourseDetailsVocabularyLearning extends StatelessWidget {
  const LanguageCourseDetailsVocabularyLearning({
    super.key,
    required this.wordsList,
    required this.phrasalVerbsList,
    required this.learningLanguage,
    required this.onStartLearning,
  });

  final List<Word> wordsList;
  final List<PhrasalVerb> phrasalVerbsList;
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
        Expanded(
          child: ListView(
            children: [
              Text(
                S.current.phrasalVerb,
                style: AppTextStyles.s14w400primary().bold,
              ),
              SizedBox(height: Dimens.d8.responsive()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: phrasalVerbsList.length,
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.d12.responsive()),
                itemBuilder: (_, index) {
                  final phrasalVerb = phrasalVerbsList[index];
                  final phrasalVerbText = switch (learningLanguage) {
                    LearningLanguage.english => phrasalVerb.englishPhrasalVerb,
                    LearningLanguage.vietnamese =>
                      phrasalVerb.vietnamesePhrasalVerb,
                    LearningLanguage.french => phrasalVerb.frenchPhrasalVerb,
                  };
                  final phrasalVerbDescription = switch (learningLanguage) {
                    LearningLanguage.english => phrasalVerb.englishDescription,
                    LearningLanguage.vietnamese =>
                      phrasalVerb.vietnameseDescription,
                    LearningLanguage.french => phrasalVerb.frenchDescription,
                  };
                  return _PhrasalVerbItem(
                    phrasalVerb: phrasalVerbText,
                    description: phrasalVerbDescription,
                    learningLanguage: learningLanguage,
                  );
                },
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              Text(
                S.current.word,
                style: AppTextStyles.s14w400primary().bold,
              ),
              SizedBox(height: Dimens.d8.responsive()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: wordsList.length,
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.d12.responsive()),
                itemBuilder: (_, index) {
                  final word = wordsList[index];
                  final wordText = switch (learningLanguage) {
                    LearningLanguage.english => word.englishWord,
                    LearningLanguage.vietnamese => word.vietnameseWord,
                    LearningLanguage.french => word.frenchWord,
                  };
                  return _WordItemWidget(
                    word: wordText,
                    pronunciation: word.pronunciation,
                    typeOfWord: word.wordType.wordTypeName,
                    learningLanguage: learningLanguage,
                  );
                },
              ),
            ],
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

class _WordItemWidget extends StatelessWidget {
  const _WordItemWidget({
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
                      .read<LanguageCourseDetailsViewModel>()
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

class _PhrasalVerbItem extends StatelessWidget {
  const _PhrasalVerbItem({
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
                      .read<LanguageCourseDetailsViewModel>()
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
