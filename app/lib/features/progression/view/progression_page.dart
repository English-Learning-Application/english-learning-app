import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

@RoutePage()
class ProgressionPage extends StatefulWidget {
  const ProgressionPage({super.key});

  @override
  State<ProgressionPage> createState() => _ProgressionPageState();
}

class _ProgressionPageState
    extends BasePageState<ProgressionPage, ProgressionViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.learningProgression,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Selector<ProgressionViewModel, ProgressionViewModelData>(
      selector: (_, vm) => vm.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.learningProgress != next.learningProgress,
      builder: (_, vmData, __) {
        final languageCourses = vmData.languageCourses;
        final categoryCourses = vmData.categoryCourses;

        if (languageCourses.isEmpty && categoryCourses.isEmpty) {
          return Column(
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

        return ListView.separated(
          separatorBuilder: (_, __) => SizedBox(
            height: Dimens.d16.responsive(),
          ),
          itemCount: languageCourses.length + categoryCourses.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            if (index < languageCourses.length) {
              final course = languageCourses[index];
              final language = course.language;
              final courseLevel = course.level;
              final courseLearningType = course.learningType;
              return CourseCard(
                border: Border(
                  top: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d1.responsive(),
                  ),
                  left: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d2.responsive(),
                  ),
                  right: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d2.responsive(),
                  ),
                  bottom: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d4.responsive(),
                  ),
                ),
                borderRadius: Dimens.d8.responsive(),
                color: AppColors.current.primaryColor.withValues(alpha: 0.75),
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
                      style: AppTextStyles.s14w400primary().font14().secondary,
                    ),
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          courseLearningType.learningTypeName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.s14w400primary()
                              .font12()
                              .secondary
                              .light,
                        ),
                        courseLearningType.icon.svg(
                          width: Dimens.d24.responsive(),
                          height: Dimens.d24.responsive(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimens.d16.responsive(),
                    ),
                    LinearProgressIndicator(
                      value: course.completionProgress(),
                      color: AppColors.current.primaryColor,
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
              final course = categoryCourses[index - languageCourses.length];
              final language = course.language;
              final courseName = switch (language) {
                LearningLanguage.english => course.englishName,
                LearningLanguage.vietnamese => course.vietnameseName,
                LearningLanguage.french => course.frenchName,
              };
              final categoryName = switch (language) {
                LearningLanguage.english => course.englishName,
                LearningLanguage.vietnamese => course.vietnameseName,
                LearningLanguage.french => course.frenchName,
              };
              return CourseCard(
                border: Border(
                  top: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d1.responsive(),
                  ),
                  left: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d2.responsive(),
                  ),
                  right: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d2.responsive(),
                  ),
                  bottom: BorderSide(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d4.responsive(),
                  ),
                ),
                borderRadius: Dimens.d8.responsive(),
                color: AppColors.current.primaryColor.withValues(alpha: 0.75),
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
                      color: AppColors.current.primaryColor,
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
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit();
  }

  @override
  String get screenName => 'Progression';
}
