import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../widgets/language_level_card.dart';

@RoutePage()
class LanguageCoursePage extends StatefulWidget {
  const LanguageCoursePage({
    super.key,
    required this.language,
  });
  final LearningLanguage language;
  @override
  State<LanguageCoursePage> createState() => _LanguageCoursePageState();
}

class _LanguageCoursePageState
    extends BasePageState<LanguageCoursePage, LanguageCourseViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.language.languageName,
              style: AppTextStyles.s14w400primary().medium.font16(),
            ),
            SizedBox(
              width: Dimens.d8.responsive(),
            ),
            widget.language.landmarkIcon.svg(
              width: Dimens.d24.responsive(),
              height: Dimens.d24.responsive(),
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(height: Dimens.d16.responsive()),
        _buildLevelSelection(),
        SizedBox(height: Dimens.d16.responsive()),
        Expanded(
          child: _buildCoursesList(),
        ),
      ],
    );
  }

  Widget _buildLevelSelection() {
    return Selector<LanguageCourseViewModel, LanguageCourseViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (prev, next) =>
          prev.languageLevel != next.languageLevel ||
          prev.isNoLanguageCourse != next.isNoLanguageCourse,
      builder: (_, vmData, __) {
        if (vmData.isNoLanguageCourse) {
          return const SizedBox();
        }
        return SizedBox(
          height: Dimens.d40.responsive(),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: LanguageLevel.values.length,
            separatorBuilder: (_, index) => SizedBox(
              width: Dimens.d8.responsive(),
            ),
            itemBuilder: (_, index) {
              final level = LanguageLevel.values[index];
              return LanguageLevelCard(
                level: level,
                isSelected: vmData.languageLevel == level,
                onTap: (level) async {
                  await viewModel.chooseLearningLevel(level);
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  void initViewModels() async {
    await viewModel.init(
      widget.language,
    );
  }

  @override
  String get screenName => 'LanguageCoursePage';

  Widget _buildCoursesList() {
    final isMobile = AppDimens.current.screenType.isMobile;
    final isTablet = AppDimens.current.screenType.isTablet;
    return Selector<LanguageCourseViewModel, LanguageCourseViewModelData>(
        selector: (_, viewModel) => viewModel.viewModelData,
        shouldRebuild: (prev, next) =>
            prev.languageCourses != next.languageCourses ||
            prev.isNoLanguageCourse != next.isNoLanguageCourse,
        builder: (_, vmData, __) {
          final courses = vmData.languageCourses;
          if (vmData.isNoLanguageCourse) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
          return RefreshIndicator(
            onRefresh: () async {
              await viewModel.refresh();
            },
            child: GridView.builder(
              itemCount: courses.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile
                    ? 2
                    : isTablet
                        ? 3
                        : 4,
                crossAxisSpacing: Dimens.d10.responsive(),
                mainAxisSpacing: Dimens.d10.responsive(),
                childAspectRatio: 0.9.responsive(),
              ),
              itemBuilder: (_, index) {
                final course = courses[index];
                return CourseCard(
                  borderRadius: Dimens.d8.responsive(),
                  color: FoundationColors.primary500,
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.d16.responsive(),
                    vertical: Dimens.d8.responsive(),
                  ),
                  onPressed: () async {
                    await navigator.push(
                      AppRouteInfo.languageCourseDetails(
                          languageCourse: course),
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
                        "${S.current.level}: ${course.level.serverValue}",
                        style:
                            AppTextStyles.s14w400primary().font14().secondary,
                      ),
                      SizedBox(
                        height: Dimens.d8.responsive(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            course.learningType.learningTypeName,
                            style: AppTextStyles.s14w400primary()
                                .font14()
                                .secondary,
                          ),
                          course.learningType.icon.svg(
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
              },
            ),
          );
        });
  }
}
