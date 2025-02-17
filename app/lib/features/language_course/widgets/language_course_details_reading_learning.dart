import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class LanguageCourseDetailsReadingLearning extends StatelessWidget {
  const LanguageCourseDetailsReadingLearning({
    super.key,
    required this.expressionsList,
    required this.idiomsList,
    required this.learningLanguage,
    required this.onStartLearning,
  });

  final List<Expression> expressionsList;
  final List<Idiom> idiomsList;
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
                S.current.idiom,
                style: AppTextStyles.s14w400primary().bold.font16(),
              ),
              SizedBox(height: Dimens.d8.responsive()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: idiomsList.length,
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.d12.responsive()),
                itemBuilder: (_, index) {
                  final idiom = idiomsList[index];
                  final idiomText = switch (learningLanguage) {
                    LearningLanguage.english => idiom.englishIdiom,
                    LearningLanguage.vietnamese => idiom.vietnameseIdiom,
                    LearningLanguage.french => idiom.frenchIdiom,
                  };
                  return _ExpressionItemWidget(
                    expression: idiomText,
                    exampleUsage: idiom.exampleUsage,
                    learningLanguage: learningLanguage,
                  );
                },
              ),
              SizedBox(height: Dimens.d16.responsive()),
              Text(
                S.current.expression,
                style: AppTextStyles.s14w400primary().bold.font16(),
              ),
              SizedBox(height: Dimens.d8.responsive()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: expressionsList.length,
                separatorBuilder: (_, __) =>
                    SizedBox(height: Dimens.d12.responsive()),
                itemBuilder: (_, index) {
                  final expression = expressionsList[index];
                  final expressionText = switch (learningLanguage) {
                    LearningLanguage.english => expression.englishExpression,
                    LearningLanguage.vietnamese =>
                      expression.vietnameseExpression,
                    LearningLanguage.french => expression.frenchExpression,
                  };
                  return _ExpressionItemWidget(
                    expression: expressionText,
                    exampleUsage: expression.exampleUsage,
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

class _ExpressionItemWidget extends StatelessWidget {
  const _ExpressionItemWidget({
    required this.expression,
    required this.exampleUsage,
    required this.learningLanguage,
  });

  final String expression;
  final Map<String, dynamic> exampleUsage;
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
                  expression,
                  style: AppTextStyles.s14w400primary().secondary.bold.font16(),
                ),
                SizedBox(height: Dimens.d4.responsive()),
                Text(
                  exampleUsage[learningLanguage.serverValue.toLowerCase()],
                  style: AppTextStyles.s14w400primary().font12().secondary,
                ),
              ],
            ),
          ),
          SizedBox(width: Dimens.d16.responsive()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  await context
                      .read<LanguageCourseDetailsViewModel>()
                      .speakFromText(
                        expression,
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
