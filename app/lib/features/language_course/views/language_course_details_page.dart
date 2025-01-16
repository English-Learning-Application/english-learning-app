import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../widgets/language_course_details_vocabulary_learning.dart';

@RoutePage()
class LanguageCourseDetailsPage extends StatefulWidget {
  const LanguageCourseDetailsPage({super.key, required this.languageCourse});
  final LanguageCourse languageCourse;

  @override
  State<LanguageCourseDetailsPage> createState() =>
      _LanguageCourseDetailsPageState();
}

class _LanguageCourseDetailsPageState extends BasePageState<
    LanguageCourseDetailsPage, LanguageCourseDetailsViewModel> {
  Widget _buildStartLearningButton(
      {required VoidCallback onPressed, required Widget child}) {
    return StandardButton(
      buttonSize: ButtonSize.medium,
      buttonType: ButtonType.ghost,
      borderRadius: Dimens.d8.responsive(),
      textStyle: AppTextStyles.s14w400primary().medium.font16(),
      onPressed: onPressed,
      leadingIconSize: 0,
      innerGap: 0,
      trailingIconSize: 0,
      borderColor: AppColors.current.primaryColor,
      child: child,
    );
  }

  void _onVocabularyStartLearning() async {
    await navigator.showModalBottomSheet(
      AppPopupInfo.bottomSheet(
        title: S.current.startLearning,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              _buildStartLearningButton(
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.flashCardLearning(
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents.first,
                      learningLanguage: languageCourse.language,
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        S.current.flashcard,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.s14w400primary()
                            .medium
                            .font16()
                            .primary,
                      ),
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    Assets.icons.icPlay.svg(
                      width: Dimens.d24.responsive(),
                      height: Dimens.d24.responsive(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              _buildStartLearningButton(
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.quizLearning(
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents.first,
                      learningLanguage: languageCourse.language,
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        S.current.quiz,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.s14w400primary()
                            .medium
                            .font16()
                            .primary,
                      ),
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    Assets.icons.icPlay.svg(
                      width: Dimens.d24.responsive(),
                      height: Dimens.d24.responsive(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              _buildStartLearningButton(
                onPressed: () {
                  navigator.pop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        S.current.matching,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.s14w400primary()
                            .medium
                            .font16()
                            .primary,
                      ),
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    Assets.icons.icPlay.svg(
                      width: Dimens.d24.responsive(),
                      height: Dimens.d24.responsive(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              _buildStartLearningButton(
                onPressed: () {
                  navigator.pop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        S.current.pronunciation,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.s14w400primary()
                            .medium
                            .font16()
                            .primary,
                      ),
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    Assets.icons.icPlay.svg(
                      width: Dimens.d24.responsive(),
                      height: Dimens.d24.responsive(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      useRootNavigator: true,
      isScrollControlled: false,
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final languageCourse = widget.languageCourse;
    return CommonScaffold(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      appBar: CommonAppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${languageCourse.language.languageName} - ${languageCourse.level.levelName}",
              style: AppTextStyles.s14w400primary().medium.font16(),
            ),
            SizedBox(
              width: Dimens.d8.responsive(),
            ),
            widget.languageCourse.language.icon.svg(
              width: Dimens.d24.responsive(),
              height: Dimens.d24.responsive(),
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.init(widget.languageCourse);
  }

  Widget _buildBody() {
    return Selector<LanguageCourseDetailsViewModel,
        LanguageCourseDetailsViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.languageCourse != next.languageCourse,
      builder: (_, vmData, __) {
        switch (vmData.learningType) {
          case LearningType.vocabulary:
            return LanguageCourseDetailsVocabularyLearning(
              wordsList: vmData
                  .languageCourse.languageCourseLearningContents.first.words,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onVocabularyStartLearning,
            );
          default:
            return Container();
        }
      },
    );
  }

  @override
  String get screenName => 'LanguageCourseDetailsPage';
}
