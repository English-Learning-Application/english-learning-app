import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../widgets/language_selection_card.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeViewModel> {
  @override
  void initViewModels() {
    viewModel.onInit();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserIntroduction(),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildLanguageSelector(),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildCommunityHub(),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildMyInProgressCourses(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserIntroduction() {
    return Selector<AppViewModel, AppViewModelData>(
      selector: (context, appViewModel) => appViewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.currentUser != next.currentUser,
      builder: (_, vmData, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: '${S.current.welcome}, ',
                style: AppTextStyles.s14w400primary().font16(),
                children: [
                  TextSpan(
                    text: vmData.currentUser.username,
                    style: AppTextStyles.s14w400primary().font16().bold,
                  ),
                  const TextSpan(
                    text: ' 👋🏻',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: "${S.current.chooseWhat} \n",
                style: AppTextStyles.s14w400primary().font22().extraBold,
                children: [
                  TextSpan(
                    text: ' ${S.current.toLearnToday} ?',
                    style: AppTextStyles.s14w400primary().font24(),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildLanguageSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.chooseTheLanguage,
          style: AppTextStyles.s14w400primary().font16().bold,
        ),
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        SizedBox(
          height: Dimens.d100.responsive(),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => SizedBox(
              width: Dimens.d16.responsive(),
            ),
            itemBuilder: (_, index) {
              final language = LearningLanguage.values[index];
              return LanguageSelectionCard(
                icon: language.icon.svg(
                  width: Dimens.d40.responsive(),
                  height: Dimens.d40.responsive(),
                ),
                languageName: language.languageName,
                onTap: () async {
                  await navigator.push(
                    AppRouteInfo.languageCourse(learningLanguage: language),
                  );
                },
              );
            },
            itemCount: LearningLanguage.values.length,
          ),
        ),
      ],
    );
  }

  Widget _buildMyInProgressCourses() {
    final isMobile = AppDimens.current.screenType.isMobile;
    final isTablet = AppDimens.current.screenType.isTablet;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.myInProgressCourses,
          style: AppTextStyles.s14w400primary().font16().bold,
        ),
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Selector<HomeViewModel, HomeViewModelData>(
          shouldRebuild: (previous, next) =>
              previous.languageCourses != next.languageCourses ||
              previous.categoryCourses != next.categoryCourses,
          selector: (_, vm) => vm.viewModelData,
          builder: (_, vmData, __) {
            final languageCourses = vmData.languageCourses;
            final categoryCourses = vmData.categoryCourses;

            if (languageCourses.isEmpty && categoryCourses.isEmpty) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.current.noInProgressCourses,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.s14w400primary().font16().bold,
                  ),
                  SizedBox(
                    height: Dimens.d16.responsive(),
                  ),
                  StandardButton(
                    buttonSize: ButtonSize.small,
                    buttonType: ButtonType.secondary,
                    innerGap: 0,
                    leadingIconSize: 0,
                    trailingIconSize: 0,
                    text: S.current.exploreCourses,
                    onPressed: () async {
                      await navigator.push(
                        const AppRouteInfo.languageCourse(
                          learningLanguage: LearningLanguage.english,
                        ),
                      );
                    },
                  ),
                ],
              );
            }

            return GridView.builder(
              itemCount: languageCourses.length + categoryCourses.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile
                    ? 2
                    : isTablet
                        ? 3
                        : 4,
                crossAxisSpacing: Dimens.d10.responsive(),
                mainAxisSpacing: Dimens.d10.responsive(),
                childAspectRatio: 0.75.responsive(),
              ),
              itemBuilder: (_, index) {
                if (index < languageCourses.length) {
                  final course = languageCourses[index];
                  final language = course.language;
                  final courseLevel = course.level;
                  final courseLearningType = course.learningType;
                  return CourseCard(
                    borderRadius: Dimens.d8.responsive(),
                    color: FoundationColors.primary500,
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.d16.responsive(),
                      vertical: Dimens.d8.responsive(),
                    ),
                    onPressed: () {
                      navigator.push(
                        AppRouteInfo.languageCourseDetails(
                          languageCourse: course,
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                language.languageName,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.s14w400primary()
                                    .font16()
                                    .secondary
                                    .bold,
                              ),
                            ),
                            SizedBox(
                              width: Dimens.d8.responsive(),
                            ),
                            course.language.icon.svg(
                              width: Dimens.d24.responsive(),
                              height: Dimens.d24.responsive(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        Text(
                          "${S.current.level}: ${courseLevel.levelName}",
                          style:
                              AppTextStyles.s14w400primary().font14().secondary,
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        Text(
                          courseLearningType.learningTypeName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.s14w400primary()
                              .font12()
                              .secondary
                              .light,
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        courseLearningType.icon.svg(
                          width: Dimens.d24.responsive(),
                          height: Dimens.d24.responsive(),
                        ),
                        SizedBox(
                          height: Dimens.d16.responsive(),
                        ),
                        LinearProgressIndicator(
                          value: course.completionProgress(),
                          color: FoundationColors.accent200,
                          borderRadius: BorderRadius.circular(
                            Dimens.d8.responsive(),
                          ),
                          minHeight: Dimens.d4.responsive(),
                          backgroundColor: FoundationColors.neutral50,
                        )
                      ],
                    ),
                  );
                } else {
                  final course =
                      categoryCourses[index - languageCourses.length];
                  final language = course.language;
                  final courseName = switch (language) {
                    LearningLanguage.english => course.englishName,
                    LearningLanguage.vietnamese => course.vietnameseName,
                    LearningLanguage.french => course.frenchName,
                  };
                  final category = course.category;
                  final categoryName = switch (language) {
                    LearningLanguage.english => course.englishName,
                    LearningLanguage.vietnamese => course.vietnameseName,
                    LearningLanguage.french => course.frenchName,
                  };
                  return CourseCard(
                    borderRadius: Dimens.d8.responsive(),
                    color: FoundationColors.primary500,
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.d16.responsive(),
                      vertical: Dimens.d8.responsive(),
                    ),
                    onPressed: () {
                      navigator.push(
                        AppRouteInfo.categoryCourseLesson(
                          categoryCourse: course,
                          languageCourseLearningContents:
                              course.languageCourseLearningContent,
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                course.language.languageName,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.s14w400primary()
                                    .font16()
                                    .secondary
                                    .bold,
                              ),
                            ),
                            SizedBox(
                              width: Dimens.d8.responsive(),
                            ),
                            course.language.icon.svg(
                              width: Dimens.d24.responsive(),
                              height: Dimens.d24.responsive(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        Text(
                          courseName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.s14w400primary()
                              .font14()
                              .secondary
                              .bold,
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        Text(
                          categoryName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.s14w400primary()
                              .font12()
                              .secondary
                              .light,
                        ),
                        SizedBox(
                          height: Dimens.d8.responsive(),
                        ),
                        LinearProgressIndicator(
                          value: course.completionProgress(),
                          color: FoundationColors.accent200,
                          borderRadius: BorderRadius.circular(
                            Dimens.d8.responsive(),
                          ),
                          minHeight: Dimens.d4.responsive(),
                          backgroundColor: FoundationColors.neutral50,
                        )
                      ],
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildCommunityHub() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.communityHub,
          style: AppTextStyles.s14w400primary().font16().bold,
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.current.primaryColor.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(
              Dimens.d8.responsive(),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d16.responsive(),
            vertical: Dimens.d8.responsive(),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Selector<HomeViewModel, HomeViewModelData>(
                      selector: (_, viewModel) => viewModel.viewModelData,
                      shouldRebuild: (previous, next) =>
                          previous.chatSessions != next.chatSessions,
                      builder: (_, viewModelData, __) {
                        if (viewModelData.chatSessions.isNotEmpty) {
                          return Text(
                            S.current.communityJoined,
                            style: AppTextStyles.s14w400primary()
                                .font12()
                                .bold
                                .secondary,
                          );
                        }
                        return Text(
                          S.current.communityNotJoined,
                          style: AppTextStyles.s14w400primary()
                              .font12()
                              .bold
                              .secondary,
                        );
                      },
                    ),
                    SizedBox(
                      height: Dimens.d4.responsive(),
                    ),
                    StandardButton(
                      buttonSize: ButtonSize.small,
                      innerGap: 0,
                      leadingIconSize: 0,
                      trailingIconSize: 0,
                      text: S.current.joinCommunity,
                      onPressed: () async {
                        await navigator.push(
                          const AppRouteInfo.community(),
                        );
                        viewModel.onInit();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Dimens.d16.responsive(),
              ),
              Assets.icons.icCommunity.svg(
                width: Dimens.d40.responsive(),
                height: Dimens.d40.responsive(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  String get screenName => 'Home';
}
