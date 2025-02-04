import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

@RoutePage()
class QuizLearningPage extends StatefulWidget {
  const QuizLearningPage({
    super.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
    required this.courseId,
  });
  final String courseId;
  final LearningLanguage learningLanguage;
  final List<LanguageCourseLearningContent> languageCourseLearningContent;

  @override
  State<QuizLearningPage> createState() => _QuizLearningPageState();
}

class _QuizLearningPageState
    extends BasePageState<QuizLearningPage, QuizLearningViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.quiz,
      ),
      body: Selector<QuizLearningViewModel, QuizLearningViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (previous, next) =>
              next.correctContentIds.length + next.incorrectContentIds.length ==
              next.totalLearningContentCount,
          builder: (_, vmData, __) {
            final isFinished = vmData.correctContentIds.length +
                    vmData.incorrectContentIds.length ==
                vmData.totalLearningContentCount;

            if (isFinished) {
              return _finishQuizLearning(
                totalLearningContentCount: vmData.totalLearningContentCount,
                learnedContentIds: vmData.correctContentIds.length,
              );
            }
            return _buildBody();
          }),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Selector<QuizLearningViewModel, QuizLearningViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
              next.currentLearningContentIndex,
          builder: (_, vmData, __) {
            return LinearProgressIndicator(
              value: (vmData.currentLearningContentIndex + 1) /
                  vmData.totalLearningContentCount,
              backgroundColor: AppColors.current.primaryTextColor.withValues(
                alpha: 0.3,
              ),
              borderRadius: BorderRadius.circular(
                Dimens.d8.responsive(),
              ),
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.current.primaryColor,
              ),
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<QuizLearningViewModel, QuizLearningViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
              next.currentLearningContentIndex,
          builder: (_, vmData, __) {
            if (vmData.quizLearningEntities.isEmpty) {
              return const SizedBox.shrink();
            }
            final currentQuizLearningEntity =
                vmData.quizLearningEntities[vmData.currentLearningContentIndex];
            return Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await viewModel.speakFromText(
                          currentQuizLearningEntity.question,
                          widget.learningLanguage,
                        );
                      },
                      child: Text(
                        currentQuizLearningEntity.question,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s14w400primary().medium.font24(),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.d16.responsive(),
                    ),
                    if (currentQuizLearningEntity.imageUrl.isNotEmpty) ...[
                      ImagesProvider.networkImage(
                        imageUrl: currentQuizLearningEntity.imageUrl,
                        width: double.infinity,
                        height: Dimens.d200.responsive(),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<QuizLearningViewModel, QuizLearningViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
              next.currentLearningContentIndex,
          builder: (_, vmData, __) {
            if (vmData.quizLearningEntities.isEmpty) {
              return const SizedBox.shrink();
            }
            final currentQuizLearningEntity =
                vmData.quizLearningEntities[vmData.currentLearningContentIndex];
            return Column(
              children: List.generate(
                currentQuizLearningEntity.answers.length,
                (index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: Dimens.d8.responsive(),
                      ),
                      StandardButton(
                        buttonSize: ButtonSize.medium,
                        buttonType: ButtonType.ghost,
                        borderColor: AppColors.current.primaryColor,
                        text: currentQuizLearningEntity.answers[index],
                        onPressed: () {
                          viewModel.onChooseAnswer(index);
                        },
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      learningLanguage: widget.learningLanguage,
      languageCourseLearningContent: widget.languageCourseLearningContent,
      courseId: widget.courseId,
    );
  }

  @override
  String get screenName => 'QuizLearningPage';

  Widget _finishQuizLearning({
    required int totalLearningContentCount,
    required int learnedContentIds,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Assets.lottie.lottieSuccess.lottie(
            animate: true,
            repeat: true,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Column(
              children: [
                Text(
                  "${S.current.congratulations}!",
                  style: AppTextStyles.s14w400primary().font20().bold,
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Text(
                  S.current.youHaveCompletedTheCourse,
                  style: AppTextStyles.s14w400primary().font15().medium,
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                SizedBox(
                  width: Dimens.d200.responsive(),
                  height: Dimens.d200.responsive(),
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Text(
                          "$learnedContentIds/$totalLearningContentCount",
                          style: AppTextStyles.s14w400primary().font40().bold,
                        ),
                      ),
                      CircularProgressIndicator(
                        value: learnedContentIds / totalLearningContentCount,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.current.primaryColor,
                        ),
                        backgroundColor: AppColors.current.primaryTextColor
                            .withValues(alpha: 0.2),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Selector<QuizLearningViewModel, QuizLearningViewModelData>(
                  selector: (context, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (previous, next) =>
                      previous.quizLearningEntities !=
                      next.quizLearningEntities,
                  builder: (_, vmData, __) {
                    return Expanded(
                      child: ListView.separated(
                        separatorBuilder: (_, __) {
                          return SizedBox(
                            height: Dimens.d16.responsive(),
                          );
                        },
                        itemCount: vmData.quizLearningEntities.length,
                        itemBuilder: (_, index) {
                          final learningContent = viewModel
                              .viewModelData.quizLearningEntities[index];
                          final isLearned = vmData.correctContentIds
                              .contains(learningContent.id);
                          final isIncorrect =
                              vmData.incorrectContentIds.contains(
                            learningContent.id,
                          );
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.d16.responsive(),
                              vertical: Dimens.d12.responsive(),
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.current.backgroundColor,
                              borderRadius:
                                  BorderRadius.circular(Dimens.d8.responsive()),
                              border: Border.all(
                                color: isIncorrect
                                    ? FoundationColors.error500
                                    : AppColors.current.primaryColor,
                                width: Dimens.d1.responsive(),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        learningContent.question,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .font16()
                                            .bold,
                                      ),
                                      SizedBox(
                                        height: Dimens.d8.responsive(),
                                      ),
                                      Text(
                                        learningContent.answers[learningContent
                                            .selectedAnswerIndex],
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .font12()
                                            .light,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Dimens.d8.responsive(),
                                ),
                                if (isLearned) ...[
                                  Text(
                                    S.current.correct,
                                    style: AppTextStyles.s14w400primary()
                                        .font12()
                                        .bold,
                                  ),
                                ],
                                if (isIncorrect) ...[
                                  Text(
                                    S.current.incorrect,
                                    style: AppTextStyles.s14w400primary()
                                        .font12()
                                        .bold,
                                  ),
                                ],
                                SizedBox(
                                  height: Dimens.d8.responsive(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                StandardButton(
                  onPressed: () {
                    navigator.pop();
                  },
                  buttonSize: ButtonSize.small,
                  text: S.current.backToCourses,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
