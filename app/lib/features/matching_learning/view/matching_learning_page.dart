import 'package:auto_route/annotations.dart';
import 'package:collection/collection.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

@RoutePage()
class MatchingLearningPage extends StatefulWidget {
  const MatchingLearningPage({
    super.key,
    required this.learningLanguage,
    required this.languageCourseLearningContents,
    this.learningType,
  });

  final LearningLanguage learningLanguage;
  final List<LanguageCourseLearningContent> languageCourseLearningContents;
  final LearningType? learningType;

  @override
  State<MatchingLearningPage> createState() => _MatchingLearningPageState();
}

class _MatchingLearningPageState
    extends BasePageState<MatchingLearningPage, MatchingLearningViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.matching,
      ),
      body: Selector<MatchingLearningViewModel, MatchingLearningViewModelData>(
        selector: (_, viewModel) => viewModel.viewModelData,
        shouldRebuild: (previous, next) {
          return next.learnedContentIds.length +
                  next.skippedContentIds.length ==
              next.totalLearningContentCount;
        },
        builder: (_, vmData, __) {
          final isFinished = vmData.learnedContentIds.length +
                  vmData.skippedContentIds.length ==
              vmData.totalLearningContentCount;

          if (isFinished) {
            return _finishMatchingLearning(
              totalLearningContentCount: vmData.totalLearningContentCount,
              learnedContentIds: vmData.learnedContentIds.length,
            );
          }
          return _buildBody();
        },
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      languageCourseLearningContent: widget.languageCourseLearningContents,
      learningLanguage: widget.learningLanguage,
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        _buildTargetTexts(),
        Expanded(
          child: Selector<MatchingLearningViewModel,
              MatchingLearningViewModelData>(
            selector: (_, vm) => vm.viewModelData,
            builder: (_, vmData, __) {
              if (vmData.matchingLearningEntities.isEmpty) {
                return const SizedBox();
              }
              final currentIndex = vmData.currentLearningContentIndex;
              final currentEntity =
                  vmData.matchingLearningEntities[currentIndex];
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.learningType == LearningType.listening) ...[
                      Text(
                        S.current.listenAndMatch,
                        style: AppTextStyles.s14w400primary().font18().bold,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: Dimens.d16.responsive(),
                      ),
                      GestureDetector(
                        onTap: () {
                          viewModel.speakFromText(
                            currentEntity.learningContentType ==
                                    LearningContentType.word
                                ? currentEntity.targetTexts.join('')
                                : currentEntity.targetTexts.join(' '),
                            widget.learningLanguage,
                          );
                        },
                        child: Icon(
                          Icons.volume_up,
                          size: Dimens.d32.responsive(),
                          color: AppColors.current.primaryColor,
                        ),
                      ),
                    ] else ...[
                      Text(
                        currentEntity.hint,
                        style: AppTextStyles.s14w400primary().font18().bold,
                        textAlign: TextAlign.center,
                      ),
                    ],
                    if (currentEntity.image.isNotEmpty) ...[
                      SizedBox(
                        height: Dimens.d16.responsive(),
                      ),
                      ImagesProvider.networkImage(
                        imageUrl: currentEntity.image,
                        width: double.infinity,
                        height: Dimens.d200.responsive(),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
        _buildReshuffledTexts(),
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Selector<MatchingLearningViewModel, MatchingLearningViewModelData>(
          shouldRebuild: (previous, next) {
            final hasNoMoreNulls =
                next.currentDraggedTexts.every((element) => element != null);
            return hasNoMoreNulls ||
                previous.currentDraggedTexts != next.currentDraggedTexts;
          },
          selector: (_, viewModel) => viewModel.viewModelData,
          builder: (_, vmData, __) {
            final isNextButtonEnabled =
                vmData.currentDraggedTexts.every((element) => element != null);
            return StandardButton(
              onPressed: () {
                if (isNextButtonEnabled) {
                  viewModel.onNextButtonTap();
                }
              },
              buttonSize: ButtonSize.small,
              buttonType: isNextButtonEnabled
                  ? ButtonType.primary
                  : ButtonType.disabled,
              text: S.current.next,
            );
          },
        )
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          S.current.matchingLearningModeDescription,
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w400primary().font18().bold,
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<MatchingLearningViewModel, MatchingLearningViewModelData>(
          selector: (_, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
              next.currentLearningContentIndex,
          builder: (_, vmData, __) {
            return LinearProgressIndicator(
              value: (vmData.currentLearningContentIndex + 1) /
                  vmData.totalLearningContentCount,
              backgroundColor: FoundationColors.neutral100,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.current.primaryColor,
              ),
              borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
            );
          },
        ),
      ],
    );
  }

  @override
  String get screenName => 'MatchingLearningPage';

  Widget _buildTargetTexts() {
    return Selector<MatchingLearningViewModel, MatchingLearningViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentLearningContentIndex !=
              next.currentLearningContentIndex ||
          previous.currentDraggedTexts != next.currentDraggedTexts,
      builder: (_, vmData, __) {
        final currentIndex = vmData.currentLearningContentIndex;
        final currentEntity = vmData.matchingLearningEntities[currentIndex];
        final currentDraggedTexts = vmData.currentDraggedTexts;
        return SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: Dimens.d8.responsive(),
            runSpacing: Dimens.d8.responsive(),
            direction: Axis.horizontal,
            children: currentEntity.targetTexts.mapIndexed(
              (index, letter) {
                final draggedText = currentDraggedTexts[index];
                if (draggedText != null) {
                  return GestureDetector(
                    onTap: () {
                      viewModel.removeDraggableOnTap(index: index);
                    },
                    child: _buildLetterContainer(
                      letter: draggedText.values.first,
                    ),
                  );
                }
                return DragTarget<Map<int, String>>(
                  builder: (_, __, ___) => _buildLetterContainer(
                    letter: letter,
                    isFeedback: true,
                  ),
                  onWillAcceptWithDetails: (details) {
                    return true;
                  },
                  onAcceptWithDetails: (details) {
                    if (draggedText != null) {
                      return;
                    }
                    viewModel.onAcceptDraggable(
                      index: index,
                      text: details.data,
                    );
                  },
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  Widget _buildReshuffledTexts() {
    return Selector<MatchingLearningViewModel, MatchingLearningViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentLearningContentIndex !=
              next.currentLearningContentIndex ||
          previous.currentDraggedTexts != next.currentDraggedTexts,
      builder: (_, vmData, __) {
        final currentIndex = vmData.currentLearningContentIndex;
        final currentEntity = vmData.matchingLearningEntities[currentIndex];
        final currentDraggedTexts = vmData.currentDraggedTexts;
        return SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: Dimens.d8.responsive(),
            runSpacing: Dimens.d8.responsive(),
            direction: Axis.horizontal,
            children: currentEntity.sourceTexts.mapIndexed(
              (index, letter) {
                final textHasAlreadyBeenDragged =
                    currentDraggedTexts.firstWhere(
                          (element) {
                            return element?.keys.first == index;
                          },
                          orElse: () => null,
                        ) !=
                        null;
                if (textHasAlreadyBeenDragged) {
                  return _buildLetterContainer(
                    letter: letter,
                    isFeedback: true,
                  );
                }
                return GestureDetector(
                  onTap: () {
                    viewModel.addLetterToDraggableOnTap(
                      index: index,
                      text: letter,
                    );
                  },
                  child: Draggable<Map<int, String>>(
                    data: {index: letter},
                    feedback: _buildLetterContainer(
                      letter: letter,
                    ),
                    childWhenDragging: _buildLetterContainer(
                      letter: letter,
                      isFeedback: true,
                    ),
                    child: _buildLetterContainer(
                      letter: letter,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  Widget _buildLetterContainer({
    required String letter,
    bool isFeedback = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d8.responsive(),
        vertical: Dimens.d4.responsive(),
      ),
      decoration: BoxDecoration(
        color: isFeedback
            ? FoundationColors.neutral100
            : AppColors.current.backgroundColor,
        borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
        border: Border.all(
          color: isFeedback
              ? FoundationColors.neutral100
              : AppColors.current.primaryColor,
          width: Dimens.d1.responsive(),
        ),
      ),
      child: Text(
        letter,
        style: AppTextStyles.s14w400primary().font15().bold.primaryAppColor.let(
              (it) => it.copyWith(
                color: isFeedback
                    ? FoundationColors.neutral100
                    : AppColors.current.primaryColor,
              ),
            ),
      ),
    );
  }

  Widget _finishMatchingLearning({
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
                Selector<MatchingLearningViewModel,
                    MatchingLearningViewModelData>(
                  selector: (context, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (previous, next) =>
                      previous.matchingLearningEntities !=
                      next.matchingLearningEntities,
                  builder: (_, vmData, __) {
                    return Expanded(
                      child: ListView.separated(
                        separatorBuilder: (_, __) {
                          return SizedBox(
                            height: Dimens.d16.responsive(),
                          );
                        },
                        itemCount: vmData.matchingLearningEntities.length,
                        itemBuilder: (_, index) {
                          final learningContent = viewModel
                              .viewModelData.matchingLearningEntities[index];
                          final isLearned = vmData.learnedContentIds
                              .contains(learningContent.id);
                          final isIncorrect = vmData.skippedContentIds.contains(
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
                                        learningContent.targetTexts.join(),
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .font16()
                                            .bold,
                                      ),
                                      SizedBox(
                                        height: Dimens.d8.responsive(),
                                      ),
                                      Text(
                                        learningContent.chosenTexts,
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
