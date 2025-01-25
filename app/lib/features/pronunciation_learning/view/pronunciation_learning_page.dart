import 'dart:io';

import 'package:app/app.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

@RoutePage()
class PronunciationLearningPage extends StatefulWidget {
  const PronunciationLearningPage({
    super.key,
    required this.learningLanguage,
    required this.languageCourseLearningContent,
  });

  final LearningLanguage learningLanguage;
  final List<LanguageCourseLearningContent> languageCourseLearningContent;

  @override
  State<PronunciationLearningPage> createState() =>
      _PronunciationLearningPageState();
}

class _PronunciationLearningPageState extends BasePageState<
    PronunciationLearningPage,
    PronunciationLearningViewModel> with TickerProviderStateMixin {
  final RecorderController _recorderController = RecorderController();
  PlayerController _playerController = PlayerController();

  late AnimationController _widthAnimationController;
  late Animation<double> _widthAnimation;

  @override
  void initState() {
    _widthAnimationController = AnimationController(
      vsync: this,
      duration: DurationConstants.defaultAnimationDuration,
    );

    _widthAnimation = Tween<double>(
      begin: Dimens.d60.responsive(),
      end: Dimens.d200.responsive(),
    ).animate(
      CurvedAnimation(
          parent: _widthAnimationController, curve: Curves.easeInOut),
    );
    super.initState();
  }

  @override
  void dispose() {
    _recorderController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.pronunciation,
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      learningLanguage: widget.learningLanguage,
      languageCourseLearningContent: widget.languageCourseLearningContent,
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(height: Dimens.d16.responsive()),
        _buildPronunciationLearningHeader(),
        SizedBox(height: Dimens.d16.responsive()),
        Expanded(
          child: _buildPronunciationLearningContent(),
        ),
        SizedBox(height: Dimens.d16.responsive()),
        _buildPronunciationLearningFooter(),
        SizedBox(height: Dimens.d16.responsive()),
        _buildControlButtons(),
      ],
    );
  }

  Widget _buildPronunciationLearningHeader() {
    return Selector<PronunciationLearningViewModel,
        PronunciationLearningViewModelData>(
      selector: (context, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentLearningContentIndex !=
              next.currentLearningContentIndex ||
          previous.totalLearningContentCount != next.totalLearningContentCount,
      builder: (_, vmData, __) {
        if (vmData.pronunciationLearningEntities.isEmpty) {
          return const SizedBox.shrink();
        }
        final currentIndex = vmData.currentLearningContentIndex;
        final totalNumberOfLearningContent = vmData.totalLearningContentCount;
        return LinearProgressIndicator(
          value: (currentIndex + 1) / totalNumberOfLearningContent,
          valueColor:
              AlwaysStoppedAnimation<Color>(AppColors.current.primaryColor),
          backgroundColor: FoundationColors.neutral500,
          borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
        );
      },
    );
  }

  Widget _buildPronunciationLearningContent() {
    return Selector<PronunciationLearningViewModel,
        PronunciationLearningViewModelData>(
      selector: (context, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentLearningContentIndex !=
              next.currentLearningContentIndex ||
          previous.totalLearningContentCount != next.totalLearningContentCount,
      builder: (_, vmData, __) {
        if (vmData.pronunciationLearningEntities.isEmpty) {
          return const SizedBox.shrink();
        }
        final currentLearningContentIndex = vmData.currentLearningContentIndex;
        final pronunciationLearningEntity =
            vmData.pronunciationLearningEntities[currentLearningContentIndex];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pronunciationLearningEntity.pronunciation,
              textAlign: TextAlign.center,
              style: AppTextStyles.s14w400primary().font20().medium,
            ),
            SizedBox(height: Dimens.d16.responsive()),
            Text(
              pronunciationLearningEntity.pronunciationSubTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.s14w400primary().font14().regular,
            ),
            if (pronunciationLearningEntity.image.isNotEmpty) ...[
              SizedBox(height: Dimens.d16.responsive()),
              ImagesProvider.networkImage(
                imageUrl: pronunciationLearningEntity.image,
                width: double.infinity,
                height: Dimens.d200.responsive(),
              ),
            ]
          ],
        );
      },
    );
  }

  Widget _buildPronunciationLearningFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Selector<PronunciationLearningViewModel,
            PronunciationLearningViewModelData>(
          selector: (context, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.recordedFilePath != next.recordedFilePath,
          builder: (_, vmData, __) {
            final isAlreadyRecorder = vmData.recordedFilePath.isNotEmpty;
            if (!isAlreadyRecorder) {
              return const SizedBox.shrink();
            }
            return GestureDetector(
              onTap: () async {
                final file = File(vmData.recordedFilePath);
                await _playerController.preparePlayer(path: file.path);
                await _playerController.startPlayer();

                _playerController.onCompletion.listen((event) {
                  _playerController.stopPlayer();
                  _playerController.dispose();
                  _playerController = PlayerController();
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: Dimens.d16.responsive()),
                width: Dimens.d60.responsive(),
                height: Dimens.d60.responsive(),
                decoration: BoxDecoration(
                  color: AppColors.current.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.hearing,
                    color: AppColors.current.backgroundColor,
                    size: Dimens.d24.responsive(),
                  ),
                ),
              ),
            );
          },
        ),
        Selector<PronunciationLearningViewModel,
            PronunciationLearningViewModelData>(
          selector: (context, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.isSpeaking != next.isSpeaking,
          builder: (_, vmData, __) {
            final isSpeaking = vmData.isSpeaking;
            return GestureDetector(
              onTap: () async {
                if (isSpeaking) {
                  _widthAnimationController.reverse();
                  final recorderPath = await _recorderController.stop();
                  viewModel.onStopSpeaking(recorderPath);
                } else {
                  _widthAnimationController.forward();
                  viewModel.onSpeaking();
                  await _recorderController.record(
                    androidEncoder: AndroidEncoder.aac,
                    androidOutputFormat: AndroidOutputFormat.mpeg4,
                    iosEncoder: IosEncoder.kAudioFormatMPEG4AAC,
                  );
                }
              },
              child: AnimatedBuilder(
                animation: _widthAnimation,
                builder: (_, __) {
                  return Container(
                    width: _widthAnimation.value,
                    height: Dimens.d60.responsive(),
                    decoration: BoxDecoration(
                      color: AppColors.current.primaryColor,
                      shape: isSpeaking ? BoxShape.rectangle : BoxShape.circle,
                      borderRadius: isSpeaking
                          ? BorderRadius.circular(Dimens.d8.responsive())
                          : null,
                    ),
                    child: !isSpeaking
                        ? Center(
                            child: Icon(
                              Icons.mic,
                              color: AppColors.current.backgroundColor,
                              size: Dimens.d24.responsive(),
                            ),
                          )
                        : Center(
                            child: AudioWaveforms(
                              recorderController: _recorderController,
                              waveStyle: const WaveStyle(
                                showMiddleLine: false,
                                extendWaveform: true,
                              ),
                              size: Size(
                                _widthAnimation.value,
                                Dimens.d60.responsive(),
                              ),
                            ),
                          ),
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
  String get screenName => 'PronunciationLearningPage';

  Widget _buildControlButtons() {
    return Row(
      children: [
        Selector<PronunciationLearningViewModel,
            PronunciationLearningViewModelData>(
          selector: (context, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
              next.currentLearningContentIndex,
          builder: (_, vmData, __) {
            return Expanded(
              child: StandardButton(
                onPressed: () {
                  if (vmData.currentLearningContentIndex == 0) {
                    return;
                  }
                  viewModel.onPrevious();
                },
                buttonType: vmData.currentLearningContentIndex == 0
                    ? ButtonType.disabled
                    : ButtonType.primary,
                innerGap: 0,
                leadingIconSize: 0,
                trailingIconSize: 0,
                text: S.current.previous,
                buttonSize: ButtonSize.small,
              ),
            );
          },
        ),
        SizedBox(width: Dimens.d8.responsive()),
        Selector<PronunciationLearningViewModel,
            PronunciationLearningViewModelData>(
          selector: (context, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.currentLearningContentIndex !=
                  next.currentLearningContentIndex ||
              previous.recordedFilePath != next.recordedFilePath,
          builder: (_, vmData, __) {
            return Expanded(
              child: StandardButton(
                onPressed: () {
                  if (vmData.recordedFilePath.isEmpty) {
                    return;
                  }
                  viewModel.onAssessment();
                },
                buttonType: vmData.recordedFilePath.isEmpty
                    ? ButtonType.disabled
                    : ButtonType.primary,
                innerGap: 0,
                leadingIconSize: 0,
                trailingIconSize: 0,
                text: S.current.assessment,
                buttonSize: ButtonSize.small,
              ),
            );
          },
        ),
      ],
    );
  }
}
