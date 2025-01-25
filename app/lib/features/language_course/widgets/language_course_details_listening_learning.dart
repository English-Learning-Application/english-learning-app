import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class LanguageCourseDetailsListeningLearning extends StatelessWidget {
  const LanguageCourseDetailsListeningLearning({
    super.key,
    required this.listeningContentList,
    required this.learningLanguage,
    required this.onTapListeningContent,
  });

  final List<LanguageCourseLearningContent> listeningContentList;
  final LearningLanguage learningLanguage;
  final Function(LanguageCourseLearningContent, LearningLanguage)
      onTapListeningContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Expanded(
          child: ListView(
            children: [
              Text(
                S.current.sentence,
                style: AppTextStyles.s14w400primary().bold.font16(),
              ),
              SizedBox(height: Dimens.d8.responsive()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listeningContentList.length,
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.d12.responsive()),
                itemBuilder: (_, index) {
                  final listeningContent = listeningContentList[index];
                  final firstSentence = switch (learningLanguage) {
                    LearningLanguage.english =>
                      listeningContent.sentences.first.englishSentence,
                    LearningLanguage.vietnamese =>
                      listeningContent.sentences.first.vietnameseSentence,
                    LearningLanguage.french =>
                      listeningContent.sentences.first.frenchSentence,
                  };
                  final contentTitle = switch (learningLanguage) {
                    LearningLanguage.english => listeningContent.englishTitle,
                    LearningLanguage.vietnamese =>
                      listeningContent.vietnameseTitle,
                    LearningLanguage.french => listeningContent.frenchTitle,
                  };
                  final contentDescription = switch (learningLanguage) {
                    LearningLanguage.english =>
                      listeningContent.englishDescription,
                    LearningLanguage.vietnamese =>
                      listeningContent.vietnameseDescription,
                    LearningLanguage.french =>
                      listeningContent.frenchDescription,
                  };
                  return _ListeningContentItem(
                    contentTitle: contentTitle,
                    contentDescription: contentDescription,
                    firstSentence: firstSentence,
                    learningLanguage: learningLanguage,
                    onTap: () {
                      onTapListeningContent(
                        listeningContent,
                        learningLanguage,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ListeningContentItem extends StatelessWidget {
  const _ListeningContentItem({
    super.key,
    required this.contentTitle,
    required this.contentDescription,
    required this.firstSentence,
    required this.learningLanguage,
    required this.onTap,
  });

  final String contentTitle;
  final String contentDescription;
  final String firstSentence;
  final LearningLanguage learningLanguage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Dimens.d16.responsive()),
        decoration: BoxDecoration(
          color: AppColors.current.primaryColor,
          borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contentTitle,
              style: AppTextStyles.s14w400primary().secondary.bold.font16(),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Dimens.d4.responsive()),
            Text(
              contentDescription,
              style: AppTextStyles.s14w400primary().font12().secondary,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Dimens.d16.responsive()),
            Text(
              S.current.previewSentence,
              style: AppTextStyles.s14w400primary().bold.font14().secondary,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Dimens.d4.responsive()),
            Text(
              firstSentence,
              style: AppTextStyles.s14w400primary().font12().secondary,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Dimens.d8.responsive()),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () async {
                  await context
                      .read<LanguageCourseDetailsViewModel>()
                      .speakFromText(
                        firstSentence,
                        learningLanguage,
                      );
                },
                child: Icon(
                  Icons.volume_up,
                  color: AppColors.current.secondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
