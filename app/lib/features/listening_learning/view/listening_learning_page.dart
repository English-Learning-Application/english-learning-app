import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../../ai_chat_bot_details/widgets/chat_widget.dart';

@RoutePage()
class ListeningLearningPage extends StatefulWidget {
  const ListeningLearningPage({
    super.key,
    required this.language,
    required this.languageCourseLearningContent,
    required this.languageCourse,
  });

  final LanguageCourse languageCourse;
  final LearningLanguage language;
  final LanguageCourseLearningContent languageCourseLearningContent;

  @override
  State<ListeningLearningPage> createState() => _ListeningLearningPageState();
}

class _ListeningLearningPageState
    extends BasePageState<ListeningLearningPage, ListeningLearningViewModel> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToCurrentMessage(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    final distance = renderBox?.size.height ?? 0;
    // scroll down distance pixels
    // calculate duration based on distance
    _scrollController.animateTo(
      _scrollController.offset + distance,
      duration: Duration(milliseconds: (distance * 1.5).toInt()),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: switch (widget.language) {
          LearningLanguage.english =>
            widget.languageCourseLearningContent.englishTitle,
          LearningLanguage.vietnamese =>
            widget.languageCourseLearningContent.vietnameseTitle,
          LearningLanguage.french =>
            widget.languageCourseLearningContent.frenchTitle,
        },
      ),
      padding: EdgeInsets.zero.copyWith(
        top: Dimens.d20.responsive(),
        left: Dimens.d16.responsive(),
        right: Dimens.d16.responsive(),
        bottom: Dimens.d8.responsive(),
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      learningLanguage: widget.language,
      languageCourseLearningContent: widget.languageCourseLearningContent,
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Selector<ListeningLearningViewModel, ListeningLearningViewModelData>(
            selector: (_, viewModel) => viewModel.viewModelData,
            shouldRebuild: (previous, next) =>
                previous.languageCourseLearningContent !=
                next.languageCourseLearningContent,
            builder: (_, viewModelData, __) {
              final content = viewModelData.languageCourseLearningContent;
              final description = switch (viewModelData.learningLanguage) {
                LearningLanguage.english => content.englishDescription,
                LearningLanguage.vietnamese => content.vietnameseDescription,
                LearningLanguage.french => content.frenchDescription,
              };
              return Text(
                description,
                style: AppTextStyles.s14w400primary().font12(),
                textAlign: TextAlign.justify,
              );
            },
          ),
          SizedBox(height: Dimens.d16.responsive()),
          _buildListeningChatView(),
          SizedBox(height: Dimens.d16.responsive()),
          _buildListeningLearningControl(),
        ],
      ),
    );
  }

  Widget _buildListeningChatView() {
    return Selector<ListeningLearningViewModel, ListeningLearningViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) {
        if (next.isPlaying) {
          scrollToCurrentMessage(next.sentenceKeys[next.currentSentenceIndex]);
          viewModel.playCurrentSentence();
        } else {
          viewModel.stopPlaying();
        }
        return previous.languageCourseLearningContent !=
            next.languageCourseLearningContent;
      },
      builder: (_, vmData, __) {
        return Expanded(
          child: ListView.separated(
            controller: _scrollController,
            itemBuilder: (_, index) {
              final sentence = vmData.sentences[index];
              final sentenceText = switch (vmData.learningLanguage) {
                LearningLanguage.english => sentence.englishSentence,
                LearningLanguage.vietnamese => sentence.vietnameseSentence,
                LearningLanguage.french => sentence.frenchSentence,
              };

              return Selector<AppViewModel, AppViewModelData>(
                selector: (_, viewModel) => viewModel.viewModelData,
                shouldRebuild: (previous, next) =>
                    previous.languageCode != next.languageCode,
                builder: (_, appVmData, __) {
                  final translationText = switch (appVmData.languageCode) {
                    LanguageCode.en => sentence.englishSentence,
                    LanguageCode.vi => sentence.vietnameseSentence,
                  };
                  return GestureDetector(
                    onTap: () {
                      viewModel.playSentence(index);
                    },
                    child: _ChatWidgetItem(
                      key: vmData.sentenceKeys[index],
                      sentenceText: sentenceText,
                      index: index,
                      translationText: translationText,
                    ),
                  );
                },
              );
            },
            separatorBuilder: (_, __) =>
                SizedBox(height: Dimens.d12.responsive()),
            itemCount: vmData.sentences.length,
          ),
        );
      },
    );
  }

  Widget _buildListeningLearningControl() {
    return Selector<ListeningLearningViewModel, ListeningLearningViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentSentenceIndex != next.currentSentenceIndex ||
          previous.isPlaying != next.isPlaying,
      builder: (_, viewModelData, __) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: FoundationColors.primary400,
                shape: BoxShape.circle,
              ),
              width: Dimens.d32.responsive(),
              height: Dimens.d32.responsive(),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    viewModelData.isPlaying ? Icons.pause : Icons.play_arrow,
                    size: Dimens.d16.responsive(),
                    color: AppColors.current.secondaryTextColor,
                  ),
                  onPressed: () async {
                    viewModelData.isPlaying
                        ? viewModel.stopPlaying()
                        : viewModel
                            .playSentence(viewModelData.currentSentenceIndex);
                  },
                ),
              ),
            ),
            SizedBox(width: Dimens.d8.responsive()),
            Expanded(
              child: StandardButton(
                text: S.current.pronunciation,
                buttonSize: ButtonSize.small,
                innerGap: 0,
                leadingIconSize: 0,
                trailingIconSize: 0,
                onPressed: () async {
                  await navigator.push(
                    AppRouteInfo.pronunciationLearning(
                      courseId: widget.languageCourse.languageCourseId,
                      learningLanguage: viewModelData.learningLanguage,
                      languageCourseLearningContent: [
                        viewModelData.languageCourseLearningContent
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: Dimens.d8.responsive()),
            Expanded(
              child: StandardButton(
                text: S.current.matching,
                buttonSize: ButtonSize.small,
                innerGap: 0,
                leadingIconSize: 0,
                trailingIconSize: 0,
                onPressed: () async {
                  await navigator.push(
                    AppRouteInfo.matchingLearning(
                      courseId: widget.languageCourse.languageCourseId,
                      learningLanguage: viewModelData.learningLanguage,
                      languageCourseLearningContent: [
                        viewModelData.languageCourseLearningContent
                      ],
                      learningType: LearningType.listening,
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  String get screenName => 'ListeningLearningPage';
}

class _ChatWidgetItem extends StatefulWidget {
  const _ChatWidgetItem({
    super.key,
    required this.sentenceText,
    required this.translationText,
    required this.index,
  });

  final String sentenceText;
  final String translationText;
  final int index;

  @override
  State<_ChatWidgetItem> createState() => _ChatWidgetItemState();
}

class _ChatWidgetItemState extends State<_ChatWidgetItem> {
  bool _isShownTranslation = false;
  @override
  Widget build(BuildContext context) {
    final isMe = widget.index % 2 == 0;
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (isMe) ...[
          GestureDetector(
            onTap: () {
              setState(() {
                _isShownTranslation = !_isShownTranslation;
              });
            },
            child: Container(
              decoration: const BoxDecoration(
                color: FoundationColors.primary400,
                shape: BoxShape.circle,
              ),
              width: Dimens.d32.responsive(),
              height: Dimens.d32.responsive(),
              child: Center(
                child: Icon(
                  Icons.translate,
                  size: Dimens.d16.responsive(),
                  color: AppColors.current.secondaryTextColor,
                ),
              ),
            ),
          )
        ],
        Column(
          children: [
            ChatWidget(
              message: widget.sentenceText,
              isMe: isMe,
              isMeColor: FoundationColors.primary400,
              isNotMeColor: FoundationColors.primary400,
              isMeTextColor: AppColors.current.secondaryTextColor,
              isNotMeTextColor: AppColors.current.secondaryTextColor,
            ),
            if (_isShownTranslation) ...[
              SizedBox(height: Dimens.d8.responsive()),
              Container(
                padding: EdgeInsets.all(Dimens.d8.responsive()),
                decoration: BoxDecoration(
                  color: AppColors.current.primaryColor,
                  borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                ),
                constraints: BoxConstraints(
                  maxWidth: AppDimens.of(context).screenWidth * 0.45,
                ),
                child: Text(
                  widget.translationText,
                  style: AppTextStyles.s14w400primary().font12().secondary,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ],
        ),
        if (!isMe) ...[
          GestureDetector(
            onTap: () {
              setState(
                () {
                  _isShownTranslation = !_isShownTranslation;
                },
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: FoundationColors.primary400,
                shape: BoxShape.circle,
              ),
              width: Dimens.d32.responsive(),
              height: Dimens.d32.responsive(),
              child: Center(
                child: Icon(
                  Icons.translate,
                  size: Dimens.d16.responsive(),
                  color: AppColors.current.secondaryTextColor,
                ),
              ),
            ),
          )
        ],
      ],
    );
  }
}
