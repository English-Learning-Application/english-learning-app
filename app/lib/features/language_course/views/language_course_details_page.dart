import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../widgets/language_course_details_grammar_learning.dart';
import '../widgets/language_course_details_listening_learning.dart';
import '../widgets/language_course_details_reading_learning.dart';
import '../widgets/language_course_details_speaking_learning.dart';
import '../widgets/language_course_details_vocabulary_learning.dart';
import '../widgets/language_course_details_writing_learning.dart';

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
  Widget _buildStartLearningButton({
    required VoidCallback onPressed,
    required Widget child,
  }) {
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

  @override
  Widget buildPage(BuildContext context) {
    final languageCourse = widget.languageCourse;
    final learningType = languageCourse.learningType;
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
              "${learningType.learningTypeName} - ${languageCourse.level.levelName}",
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
        if (vmData.languageCourse.languageCourseLearningContents.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.icSadFace.svg(
                  width: Dimens.d64.responsive(),
                  height: Dimens.d64.responsive(),
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Text(
                  S.current.courseWillBeAvailableSoon,
                  style: AppTextStyles.s14w400primary().font20().bold,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }
        switch (vmData.learningType) {
          case LearningType.vocabulary:
            final wordList = vmData
                .languageCourse.languageCourseLearningContents
                .firstWhere(
                  (element) =>
                      element.learningContentType == LearningContentType.word,
                  orElse: () => const LanguageCourseLearningContent(),
                )
                .words;
            final phrasalVerbList =
                vmData.languageCourse.languageCourseLearningContents
                    .firstWhere(
                      (element) =>
                          element.learningContentType ==
                          LearningContentType.phrasalVerb,
                      orElse: () => const LanguageCourseLearningContent(),
                    )
                    .phrasalVerbs;
            return LanguageCourseDetailsVocabularyLearning(
              wordsList: wordList,
              phrasalVerbsList: phrasalVerbList,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onVocabularyStartLearning,
            );
          case LearningType.grammar:
            final tensesList = vmData
                .languageCourse.languageCourseLearningContents
                .firstWhere(
                  (element) =>
                      element.learningContentType == LearningContentType.tense,
                  orElse: () => const LanguageCourseLearningContent(),
                )
                .tenses;
            return LanguageCourseDetailsGrammarLearning(
              tensesList: tensesList,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onGrammarStartLearning,
            );
          case LearningType.reading:
            final expressionList =
                vmData.languageCourse.languageCourseLearningContents
                    .firstWhere(
                      (element) =>
                          element.learningContentType ==
                          LearningContentType.expression,
                      orElse: () => const LanguageCourseLearningContent(),
                    )
                    .expressions;
            final idiomsList = vmData
                .languageCourse.languageCourseLearningContents
                .firstWhere(
                  (element) =>
                      element.learningContentType == LearningContentType.idiom,
                  orElse: () => const LanguageCourseLearningContent(),
                )
                .idioms;
            return LanguageCourseDetailsReadingLearning(
              expressionsList: expressionList,
              idiomsList: idiomsList,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onReadingStartLearning,
            );
          case LearningType.writing:
            final sentenceList =
                vmData.languageCourse.languageCourseLearningContents
                    .firstWhere(
                      (element) =>
                          element.learningContentType ==
                          LearningContentType.sentence,
                      orElse: () => const LanguageCourseLearningContent(),
                    )
                    .sentences;
            return LanguageCourseDetailsWritingLearning(
              sentencesList: sentenceList,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onWritingStartLearning,
            );
          case LearningType.speaking:
            final phoneticsList =
                vmData.languageCourse.languageCourseLearningContents
                    .firstWhere(
                      (element) =>
                          element.learningContentType ==
                          LearningContentType.phonetics,
                      orElse: () => const LanguageCourseLearningContent(),
                    )
                    .phonetics;
            return LanguageCourseDetailsSpeakingLearning(
              phoneticsList: phoneticsList,
              learningLanguage: vmData.languageCourse.language,
              onStartLearning: _onPhoneticStartLearning,
            );
          case LearningType.listening:
            return LanguageCourseDetailsListeningLearning(
              listeningContentList:
                  vmData.languageCourse.languageCourseLearningContents,
              learningLanguage: vmData.languageCourse.language,
              onTapListeningContent: (content, language) async {
                await navigator.push(
                  AppRouteInfo.listeningLearning(
                    languageCourse: vmData.languageCourse,
                    languageCourseLearningContent: content,
                    learningLanguage: language,
                  ),
                );
              },
            );
        }
      },
    );
  }

  @override
  String get screenName => 'LanguageCourseDetailsPage';
}

extension on _LanguageCourseDetailsPageState {
  void _onReadingStartLearning() async {
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContents:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.pronunciationLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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

  void _onGrammarStartLearning() async {
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContents:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
            ],
          ),
        ),
      ),
      useRootNavigator: true,
      isScrollControlled: false,
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContents:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.pronunciationLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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

  void _onWritingStartLearning() async {
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContents:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                onPressed: () async {
                  await navigator.pop();
                  final languageCourse = viewModel.viewModelData.languageCourse;
                  await navigator.push(
                    AppRouteInfo.pronunciationLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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

  void _onPhoneticStartLearning() async {
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
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
                    AppRouteInfo.pronunciationLearning(
                      courseId: languageCourse.languageCourseId,
                      languageCourseLearningContent:
                          languageCourse.languageCourseLearningContents,
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
}
