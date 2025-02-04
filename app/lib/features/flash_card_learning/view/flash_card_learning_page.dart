import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

@RoutePage()
class FlashCardLearningPage extends StatefulWidget {
  const FlashCardLearningPage({
    super.key,
    required this.courseId,
    required this.languageCourseLearningContent,
    this.learningLanguage = LearningLanguage.english,
  });
  final String courseId;
  final LearningLanguage learningLanguage;
  final List<LanguageCourseLearningContent> languageCourseLearningContent;

  @override
  State<FlashCardLearningPage> createState() => _FlashCardLearningPageState();
}

class _FlashCardLearningPageState
    extends BasePageState<FlashCardLearningPage, FlashCardLearningViewModel> {
  final AppinioSwiperController _swiperController = AppinioSwiperController();

  @override
  void dispose() {
    _swiperController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.flashcard,
      ),
      body:
          Selector<FlashCardLearningViewModel, FlashCardLearningViewModelData>(
        selector: (context, viewModel) => viewModel.viewModelData,
        shouldRebuild: (previous, next) =>
            next.learnedContentIds.length + next.skippedContentIds.length ==
            next.totalLearningContentCount,
        builder: (_, vmData, __) {
          final isFinished = vmData.learnedContentIds.length +
                  vmData.skippedContentIds.length ==
              vmData.totalLearningContentCount;
          if (isFinished) {
            return _finishFlashCardLearning(
              learnedContentIds: vmData.learnedContentIds.length,
              totalLearningContentCount: vmData.totalLearningContentCount,
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
      courseId: widget.courseId,
      languageCourseLearningContents: widget.languageCourseLearningContent,
      learningLanguage: widget.learningLanguage,
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Selector<FlashCardLearningViewModel, FlashCardLearningViewModelData>(
            selector: (context, viewModel) => viewModel.viewModelData,
            shouldRebuild: (previous, next) =>
                previous.currentLearningContentIndex !=
                next.currentLearningContentIndex,
            builder: (_, vmData, __) {
              return Text(
                '${vmData.currentLearningContentIndex + 1}/${vmData.totalLearningContentCount}',
                style: AppTextStyles.s14w400primary().font15().medium,
              );
            },
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Expanded(
            child: Selector<FlashCardLearningViewModel,
                FlashCardLearningViewModelData>(
              selector: (context, viewModel) => viewModel.viewModelData,
              shouldRebuild: (previous, next) =>
                  previous.currentLearningContentIndex !=
                  next.currentLearningContentIndex,
              builder: (_, vmData, __) {
                return Expanded(
                  child: AppinioSwiper(
                    controller: _swiperController,
                    cardCount: vmData.totalLearningContentCount,
                    swipeOptions: const SwipeOptions.symmetric(
                      horizontal: true,
                    ),
                    onSwipeEnd: (prev, target, activity) {
                      if (activity is Swipe) {
                        if (activity.direction == AxisDirection.left) {
                          viewModel.onSkip();
                        } else if (activity.direction == AxisDirection.right) {
                          viewModel.onLearned();
                        }
                      }
                    },
                    cardBuilder: (_, index) {
                      final learningContent =
                          vmData.flashCardLearningEntities[index];
                      return FlipCard(
                        key: ValueKey(learningContent.id),
                        direction: FlipDirection.HORIZONTAL,
                        side: CardSide.FRONT,
                        front: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.d16.responsive(),
                            vertical: Dimens.d16.responsive(),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.current.backgroundColor,
                            borderRadius:
                                BorderRadius.circular(Dimens.d8.responsive()),
                            border: Border.all(
                              color: AppColors.current.primaryColor,
                              width: Dimens.d1.responsive(),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (learningContent.frontCardText.isNotEmpty) ...[
                                Text(
                                  learningContent.frontCardText,
                                  style: AppTextStyles.s14w400primary()
                                      .font20()
                                      .bold,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: Dimens.d16.responsive(),
                                ),
                              ],
                              if (learningContent
                                  .frontCardSubText.isNotEmpty) ...[
                                Text(
                                  learningContent.frontCardSubText,
                                  style: AppTextStyles.s14w400primary()
                                      .font15()
                                      .medium,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: Dimens.d16.responsive(),
                                ),
                              ],
                              if (learningContent.image.isNotEmpty) ...[
                                ImagesProvider.networkImage(
                                  imageUrl: learningContent.image,
                                  height: Dimens.d200.responsive(),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: Dimens.d16.responsive(),
                                ),
                              ],
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await viewModel.speakFromText(
                                        learningContent.frontCardText,
                                        vmData.learningLanguage
                                            .textToSpeechLanguage,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AppColors.current.primaryColor,
                                          width: Dimens.d1.responsive(),
                                        ),
                                      ),
                                      width: Dimens.d32.responsive(),
                                      height: Dimens.d32.responsive(),
                                      child: Center(
                                        child: Icon(
                                          Icons.volume_up,
                                          color: AppColors.current.primaryColor,
                                          size: Dimens.d24.responsive(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (learningContent.learningContentType ==
                                          LearningContentType.word ||
                                      learningContent.learningContentType ==
                                          LearningContentType.phonetics) ...[
                                    SizedBox(
                                      width: Dimens.d16.responsive(),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                AppColors.current.primaryColor,
                                            width: Dimens.d1.responsive(),
                                          ),
                                        ),
                                        width: Dimens.d32.responsive(),
                                        height: Dimens.d32.responsive(),
                                        child: Center(
                                          child: Icon(
                                            Icons.spellcheck,
                                            color:
                                                AppColors.current.primaryColor,
                                            size: Dimens.d24.responsive(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ],
                          ),
                        ),
                        back: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.d16.responsive(),
                            vertical: Dimens.d16.responsive(),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.current.backgroundColor,
                            borderRadius:
                                BorderRadius.circular(Dimens.d8.responsive()),
                            border: Border.all(
                              color: AppColors.current.primaryColor,
                              width: Dimens.d1.responsive(),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (learningContent.backCardText.isNotEmpty) ...[
                                Text(
                                  learningContent.backCardText,
                                  style: AppTextStyles.s14w400primary()
                                      .font20()
                                      .bold,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              if (learningContent
                                  .backCardSubText.isNotEmpty) ...[
                                Text(
                                  learningContent.backCardSubText,
                                  style: AppTextStyles.s14w400primary()
                                      .font15()
                                      .medium,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: Dimens.d16.responsive(),
                                ),
                              ],
                              if (learningContent.image.isNotEmpty) ...[
                                ImagesProvider.networkImage(
                                  imageUrl: learningContent.image,
                                  height: Dimens.d200.responsive(),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: Dimens.d16.responsive(),
                                ),
                              ],
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      final appLanguage = appViewModel
                                          .viewModelData.languageCode;
                                      await viewModel.speakFromText(
                                        learningContent.backCardText,
                                        appLanguage.textToSpeechLanguage,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AppColors.current.primaryColor,
                                          width: Dimens.d1.responsive(),
                                        ),
                                      ),
                                      width: Dimens.d32.responsive(),
                                      height: Dimens.d32.responsive(),
                                      child: Center(
                                        child: Icon(
                                          Icons.volume_up,
                                          color: AppColors.current.primaryColor,
                                          size: Dimens.d24.responsive(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (learningContent.learningContentType ==
                                          LearningContentType.word ||
                                      learningContent.learningContentType ==
                                          LearningContentType.phonetics) ...[
                                    SizedBox(
                                      width: Dimens.d16.responsive(),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                AppColors.current.primaryColor,
                                            width: Dimens.d1.responsive(),
                                          ),
                                        ),
                                        width: Dimens.d32.responsive(),
                                        height: Dimens.d32.responsive(),
                                        child: Center(
                                          child: Icon(
                                            Icons.spellcheck,
                                            color:
                                                AppColors.current.primaryColor,
                                            size: Dimens.d24.responsive(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    backgroundCardCount: 3,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Row(
            children: [
              Expanded(
                child: StandardButton(
                  innerGap: 0,
                  leadingIconSize: 0,
                  trailingIconSize: 0,
                  buttonSize: ButtonSize.small,
                  onPressed: () async {
                    await _swiperController.swipeLeft();
                  },
                  text: S.current.skip,
                ),
              ),
              SizedBox(
                width: Dimens.d16.responsive(),
              ),
              Expanded(
                child: StandardButton(
                  innerGap: 0,
                  leadingIconSize: 0,
                  trailingIconSize: 0,
                  buttonSize: ButtonSize.small,
                  onPressed: () async {
                    await _swiperController.swipeRight();
                  },
                  text: S.current.learned,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  String get screenName => 'FlashCardLearningPage';

  Widget _finishFlashCardLearning({
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
                Selector<FlashCardLearningViewModel,
                    FlashCardLearningViewModelData>(
                  selector: (context, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (previous, next) =>
                      previous.flashCardLearningEntities !=
                      next.flashCardLearningEntities,
                  builder: (_, vmData, __) {
                    return Expanded(
                      child: ListView.separated(
                        separatorBuilder: (_, __) {
                          return SizedBox(
                            height: Dimens.d16.responsive(),
                          );
                        },
                        itemCount: vmData.flashCardLearningEntities.length,
                        itemBuilder: (_, index) {
                          final learningContent = viewModel
                              .viewModelData.flashCardLearningEntities[index];
                          final isLearned = vmData.learnedContentIds
                              .contains(learningContent.id);
                          final isSkipped = vmData.skippedContentIds.contains(
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
                                color: isSkipped
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
                                        learningContent.frontCardText,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .font16()
                                            .bold,
                                      ),
                                      SizedBox(
                                        height: Dimens.d8.responsive(),
                                      ),
                                      Text(
                                        learningContent.backCardText,
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
                                    S.current.learned,
                                    style: AppTextStyles.s14w400primary()
                                        .font12()
                                        .bold,
                                  ),
                                ],
                                if (isSkipped) ...[
                                  Text(
                                    S.current.skip,
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
