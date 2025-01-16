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
    required this.languageCourseLearningContent,
    this.learningLanguage = LearningLanguage.english,
  });
  final LearningLanguage learningLanguage;
  final LanguageCourseLearningContent languageCourseLearningContent;

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
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      learningContentType:
          widget.languageCourseLearningContent.learningContentType,
      languageCourseLearningContent: widget.languageCourseLearningContent,
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
                    onEnd: () {},
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
                          vmData.languageCourseLearningContent.words[index];
                      final learningWord = switch (vmData.learningLanguage) {
                        LearningLanguage.english => learningContent.englishWord,
                        LearningLanguage.french => learningContent.frenchWord,
                        LearningLanguage.vietnamese =>
                          learningContent.vietnameseWord,
                      };
                      return FlipCard(
                        key: ValueKey(learningContent.wordId),
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
                              Text(
                                learningWord,
                                style: AppTextStyles.s14w400primary()
                                    .font20()
                                    .bold,
                              ),
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              Text(
                                learningContent.pronunciation,
                                style: AppTextStyles.s14w400primary()
                                    .font15()
                                    .medium,
                              ),
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              ImagesProvider.networkImage(
                                imageUrl: learningContent.imageUrlItem,
                                height: Dimens.d200.responsive(),
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await viewModel.speakFromText(
                                        learningWord,
                                        vmData.learningLanguage,
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
                                  SizedBox(
                                    width: Dimens.d16.responsive(),
                                  ),
                                  GestureDetector(
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
                                          Icons.spellcheck,
                                          color: AppColors.current.primaryColor,
                                          size: Dimens.d24.responsive(),
                                        ),
                                      ),
                                    ),
                                  ),
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
                              Selector<AppViewModel, AppViewModelData>(
                                selector: (context, viewModel) =>
                                    viewModel.viewModelData,
                                shouldRebuild: (previous, next) =>
                                    previous.languageCode != next.languageCode,
                                builder: (_, appVmData, __) {
                                  final localizedText =
                                      switch (appVmData.languageCode) {
                                    LanguageCode.en =>
                                      learningContent.englishWord,
                                    LanguageCode.vi =>
                                      learningContent.vietnameseWord,
                                  };
                                  return Text(
                                    localizedText,
                                    style: AppTextStyles.s14w400primary()
                                        .font20()
                                        .bold,
                                  );
                                },
                              ),
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              ImagesProvider.networkImage(
                                imageUrl: learningContent.imageUrlItem,
                                height: Dimens.d200.responsive(),
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              Selector<AppViewModel, AppViewModelData>(
                                  selector: (context, viewModel) =>
                                      viewModel.viewModelData,
                                  shouldRebuild: (previous, next) =>
                                      previous.languageCode !=
                                      next.languageCode,
                                  builder: (_, appVmData, __) {
                                    final localizedText =
                                        switch (appVmData.languageCode) {
                                      LanguageCode.en =>
                                        learningContent.englishWord,
                                      LanguageCode.vi =>
                                        learningContent.vietnameseWord,
                                    };
                                    final localizedPronunciationLanguage =
                                        switch (appVmData.languageCode) {
                                      LanguageCode.en =>
                                        LearningLanguage.english,
                                      LanguageCode.vi =>
                                        LearningLanguage.vietnamese,
                                    };
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            await viewModel.speakFromText(
                                              localizedText,
                                              localizedPronunciationLanguage,
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: AppColors
                                                    .current.primaryColor,
                                                width: Dimens.d1.responsive(),
                                              ),
                                            ),
                                            width: Dimens.d32.responsive(),
                                            height: Dimens.d32.responsive(),
                                            child: Center(
                                              child: Icon(
                                                Icons.volume_up,
                                                color: AppColors
                                                    .current.primaryColor,
                                                size: Dimens.d24.responsive(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: Dimens.d16.responsive(),
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: AppColors
                                                    .current.primaryColor,
                                                width: Dimens.d1.responsive(),
                                              ),
                                            ),
                                            width: Dimens.d32.responsive(),
                                            height: Dimens.d32.responsive(),
                                            child: Center(
                                              child: Icon(
                                                Icons.spellcheck,
                                                color: AppColors
                                                    .current.primaryColor,
                                                size: Dimens.d24.responsive(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
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
}
