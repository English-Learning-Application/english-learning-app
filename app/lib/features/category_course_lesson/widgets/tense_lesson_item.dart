import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class TenseLessonItem extends StatefulWidget {
  const TenseLessonItem({
    super.key,
    required this.tenseName,
    required this.learningLanguage,
    required this.tenseStructure,
    required this.tenseDescription,
    this.tenseForms = const [],
  });

  final String tenseName;
  final LearningLanguage learningLanguage;
  final String tenseStructure;
  final String tenseDescription;
  final List<TenseForm> tenseForms;

  @override
  State<TenseLessonItem> createState() => _TenseLessonItemState();
}

class _TenseLessonItemState extends State<TenseLessonItem> {
  bool _isShownForms = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      decoration: BoxDecoration(
        color: AppColors.current.primaryColor,
        borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
      ),
      duration: DurationConstants.defaultAnimationDuration,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.tenseName,
                      style: AppTextStyles.s14w400primary()
                          .secondary
                          .bold
                          .font16(),
                    ),
                    SizedBox(height: Dimens.d4.responsive()),
                    Text(
                      widget.tenseStructure,
                      style: AppTextStyles.s14w400primary().font12().secondary,
                    ),
                    SizedBox(height: Dimens.d4.responsive()),
                    Text(
                      widget.tenseDescription,
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
                          .read<CategoryCourseLessonViewModel>()
                          .speakFromText(
                            widget.tenseName,
                            widget.learningLanguage,
                          );
                    },
                    child: Icon(
                      Icons.volume_up,
                      color: AppColors.current.secondaryTextColor,
                    ),
                  ),
                  SizedBox(height: Dimens.d8.responsive()),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isShownForms = !_isShownForms;
                      });
                    },
                    child: Icon(
                      _isShownForms
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: AppColors.current.secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (_isShownForms) ...[
            SizedBox(height: Dimens.d16.responsive()),
            ListView.separated(
              separatorBuilder: (_, __) =>
                  SizedBox(height: Dimens.d16.responsive()),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final tenseForm = widget.tenseForms[index];
                final subject = tenseForm.tenseFormSubject;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${S.current.subject}: $subject",
                      style: AppTextStyles.s14w400primary()
                          .font14()
                          .secondary
                          .bold,
                    ),
                    SizedBox(height: Dimens.d8.responsive()),
                    Text(
                      "${S.current.positiveTense}: ${tenseForm.tenseFormPositiveRule}",
                      style: AppTextStyles.s14w400primary().font12().secondary,
                    ),
                    SizedBox(height: Dimens.d8.responsive()),
                    Text(
                      "${S.current.negativeTense}: ${tenseForm.tenseFormNegativeRule}",
                      style: AppTextStyles.s14w400primary().font12().secondary,
                    ),
                    SizedBox(height: Dimens.d8.responsive()),
                    Text(
                      "${S.current.interrogativeTense}: ${tenseForm.tenseFormQuestionRule}",
                      style: AppTextStyles.s14w400primary().font12().secondary,
                    ),
                  ],
                );
              },
              itemCount: widget.tenseForms.length,
            ),
          ],
        ],
      ),
    );
  }
}
