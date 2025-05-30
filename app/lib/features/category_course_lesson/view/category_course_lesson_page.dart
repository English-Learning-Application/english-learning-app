import 'package:app/features/category_course_lesson/widgets/idiom_category_lesson_item.dart';
import 'package:app/features/category_course_lesson/widgets/phrasal_verb_category_lesson_item.dart';
import 'package:app/features/category_course_lesson/widgets/tense_lesson_item.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../widgets/phonetic_category_lesson_item.dart';
import '../widgets/sentence_category_lesson_item.dart';
import '../widgets/word_category_lesson_item.dart';

@RoutePage()
class CategoryCourseLessonPage extends StatefulWidget {
  const CategoryCourseLessonPage({
    super.key,
    required this.languageCourseLearningContent,
    required this.categoryCourse,
  });

  final List<LanguageCourseLearningContent> languageCourseLearningContent;
  final CategoryCourse categoryCourse;

  @override
  State<CategoryCourseLessonPage> createState() =>
      _CategoryCourseLessonPageState();
}

class _CategoryCourseLessonPageState extends BasePageState<
    CategoryCourseLessonPage, CategoryCourseLessonViewModel> {
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
    final language = widget.categoryCourse.language;
    final categoryCourseName = switch (language) {
      LearningLanguage.english => widget.categoryCourse.englishName,
      LearningLanguage.vietnamese => widget.categoryCourse.vietnameseName,
      LearningLanguage.french => widget.categoryCourse.frenchName,
    };
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: categoryCourseName,
        trailingIconSize: Dimens.d24.responsive(),
        trailing: Selector<CategoryCourseLessonViewModel,
            CategoryCourseLessonViewModelData>(
          builder: (_, vmData, __) {
            return GestureDetector(
              onTap: () {
                if (vmData.isBookmarked) {
                  viewModel.removeBookmarkCourse();
                } else {
                  viewModel.bookmarkCourse();
                }
              },
              child: Tooltip(
                message: S.current.clickToBookmarkCourse,
                child: Icon(
                  size: Dimens.d24.responsive(),
                  vmData.isBookmarked
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  color: AppColors.current.primaryColor,
                ),
              ),
            );
          },
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) {
            return prev.isBookmarked != next.isBookmarked;
          },
        ),
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      languageCourseLearningContent: widget.languageCourseLearningContent,
      categoryCourse: widget.categoryCourse,
    );
  }

  Widget _buildBody() {
    return Selector<CategoryCourseLessonViewModel,
        CategoryCourseLessonViewModelData>(
      builder: (_, vmData, __) {
        if (vmData.languageCourseLearningContents.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Assets.icons.icSadFace.svg(
                width: Dimens.d100.responsive(),
                height: Dimens.d100.responsive(),
              ),
              SizedBox(
                height: Dimens.d20.responsive(),
              ),
              Text(
                S.current.courseWillBeAvailableSoon,
                style: AppTextStyles.s14w400primary().font20(),
              ),
            ],
          );
        }
        final learningContents = vmData.languageCourseLearningContents;
        return Column(
          children: [
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) {
                  final learningContent = learningContents[index];
                  final language = widget.categoryCourse.language;
                  switch (learningContent.learningContentType) {
                    case LearningContentType.word:
                      final words = learningContent.words;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.word.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...words.map(
                            (e) {
                              final word = switch (language) {
                                LearningLanguage.english => e.englishWord,
                                LearningLanguage.vietnamese => e.vietnameseWord,
                                LearningLanguage.french => e.frenchWord,
                              };
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: WordCategoryLessonItem(
                                  word: word,
                                  pronunciation: e.pronunciation,
                                  typeOfWord: e.wordType.wordTypeName,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.expression:
                      final expressions = learningContent.expressions;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.expression.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...expressions.map(
                            (e) {
                              final expression = switch (language) {
                                LearningLanguage.english => e.englishExpression,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseExpression,
                                LearningLanguage.french => e.frenchExpression,
                              };
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: IdiomCategoryLessonItem(
                                  expression: expression,
                                  exampleUsage: e.exampleUsage,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.idiom:
                      final idioms = learningContent.idioms;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.idiom.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...idioms.map(
                            (e) {
                              final idiomText = switch (language) {
                                LearningLanguage.english => e.englishIdiom,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseIdiom,
                                LearningLanguage.french => e.frenchIdiom,
                              };
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: IdiomCategoryLessonItem(
                                  expression: idiomText,
                                  exampleUsage: e.exampleUsage,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.sentence:
                      final sentences = learningContent.sentences;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.sentence.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...sentences.map(
                            (e) {
                              final sentenceText = switch (language) {
                                LearningLanguage.english => e.englishSentence,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseSentence,
                                LearningLanguage.french => e.frenchSentence,
                              };
                              final example = e.exampleUsage[
                                  language.serverValue.toLowerCase()];
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: SentenceCategoryLessonItem(
                                  sentenceText: sentenceText,
                                  example: example,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.phrasalVerb:
                      final phrasalVerbs = learningContent.phrasalVerbs;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.phrasalVerb.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...phrasalVerbs.map(
                            (e) {
                              final phrasalVerbText = switch (language) {
                                LearningLanguage.english =>
                                  e.englishPhrasalVerb,
                                LearningLanguage.vietnamese =>
                                  e.vietnamesePhrasalVerb,
                                LearningLanguage.french => e.frenchPhrasalVerb,
                              };
                              final phrasalVerbDescription = switch (language) {
                                LearningLanguage.english =>
                                  e.englishDescription,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseDescription,
                                LearningLanguage.french => e.frenchDescription,
                              };
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: PhrasalVerbCategoryLessonItem(
                                  phrasalVerb: phrasalVerbText,
                                  description: phrasalVerbDescription,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.tense:
                      final tenses = learningContent.tenses;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.tense.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...tenses.map(
                            (e) {
                              final tenseName = switch (language) {
                                LearningLanguage.english => e.englishTenseName,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseTenseName,
                                LearningLanguage.french => e.frenchTenseName,
                              };
                              final description = switch (language) {
                                LearningLanguage.english =>
                                  e.englishDescription,
                                LearningLanguage.vietnamese =>
                                  e.vietnameseDescription,
                                LearningLanguage.french => e.frenchDescription,
                              };
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: TenseLessonItem(
                                  tenseName: tenseName,
                                  learningLanguage: language,
                                  tenseStructure: e.tenseRule,
                                  tenseDescription: description,
                                  tenseForms: e.tenseForms,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    case LearningContentType.phonetics:
                      final phonetics = learningContent.phonetics;
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LearningContentType.phonetics.contentTypeName,
                                style: AppTextStyles.s14w400primary()
                                    .bold
                                    .font20(),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _onStartLearning(
                                    [learningContent],
                                  );
                                },
                                child: Assets.icons.icLearn.svg(
                                  width: Dimens.d24.responsive(),
                                  height: Dimens.d24.responsive(),
                                  colorFilter: ColorFilter.mode(
                                    AppColors.current.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...phonetics.map(
                            (e) {
                              final phoneticText = e.phoneticSymbol;
                              final phoneticSound = e.phoneticSound;
                              final pronunciationGuide = switch (language) {
                                LearningLanguage.english =>
                                  e.englishPhoneticGuide,
                                LearningLanguage.vietnamese =>
                                  e.vietnamesePhoneticGuide,
                                LearningLanguage.french =>
                                  e.frenchPhoneticGuide,
                              };

                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimens.d8.responsive(),
                                ),
                                child: PhoneticCategoryLessonItem(
                                  phonetic: phoneticText,
                                  phoneticSound: phoneticSound,
                                  pronunciationGuide: pronunciationGuide,
                                  learningLanguage: language,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                  }
                },
                separatorBuilder: (_, __) => SizedBox(
                  height: Dimens.d8.responsive(),
                ),
                itemCount: learningContents.length,
              ),
            ),
          ],
        );
      },
      selector: (_, vm) => vm.viewModelData,
    );
  }

  @override
  String get screenName => 'CategoryCourseLessonPage';
}

extension on _CategoryCourseLessonPageState {
  void _onStartLearning(
    List<LanguageCourseLearningContent> learningContents,
  ) async {
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
                  final categoryCourse = widget.categoryCourse;
                  await navigator.push(
                    AppRouteInfo.flashCardLearning(
                      courseId: categoryCourse.categoryCourseId,
                      languageCourseLearningContent: learningContents,
                      learningLanguage: categoryCourse.language,
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
                  final categoryCourse = widget.categoryCourse;
                  await navigator.push(
                    AppRouteInfo.quizLearning(
                      courseId: categoryCourse.categoryCourseId,
                      languageCourseLearningContents: learningContents,
                      learningLanguage: categoryCourse.language,
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
                  final categoryCourse = widget.categoryCourse;
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: categoryCourse.categoryCourseId,
                      languageCourseLearningContent: learningContents,
                      learningLanguage: categoryCourse.language,
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
                  final categoryCourse = widget.categoryCourse;
                  await navigator.push(
                    AppRouteInfo.pronunciationLearning(
                      courseId: categoryCourse.categoryCourseId,
                      languageCourseLearningContent: learningContents,
                      learningLanguage: categoryCourse.language,
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
