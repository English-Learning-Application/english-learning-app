import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

@RoutePage()
class CategoryCourseDetailsPage extends StatefulWidget {
  const CategoryCourseDetailsPage({
    super.key,
    required this.category,
    required this.categoryCourses,
    required this.language,
  });
  final LearningLanguage language;
  final Category category;
  final List<CategoryCourse> categoryCourses;

  @override
  State<CategoryCourseDetailsPage> createState() =>
      _CategoryCourseDetailsPageState();
}

class _CategoryCourseDetailsPageState extends BasePageState<
    CategoryCourseDetailsPage, CategoryCourseDetailsViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    final categoryName = switch (widget.language) {
      LearningLanguage.english => widget.category.englishName,
      LearningLanguage.vietnamese => widget.category.vietnameseName,
      LearningLanguage.french => widget.category.frenchName,
    };
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: categoryName,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final categoryName = switch (widget.language) {
      LearningLanguage.english => widget.category.englishName,
      LearningLanguage.vietnamese => widget.category.vietnameseName,
      LearningLanguage.french => widget.category.frenchName,
    };
    final categoryDescription = switch (widget.language) {
      LearningLanguage.english => widget.category.englishDescription,
      LearningLanguage.vietnamese => widget.category.vietnameseDescription,
      LearningLanguage.french => widget.category.frenchDescription,
    };
    return Selector<CategoryCourseDetailsViewModel,
        CategoryCourseDetailsViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.categoryCourses != next.categoryCourses,
      builder: (_, vmData, __) {
        final learningLanguage = vmData.language;
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              ImagesProvider.networkImage(
                imageUrl: widget.category.categoryImage,
                width: Dimens.d120.responsive(),
                height: Dimens.d120.responsive(),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              Text(
                categoryName,
                style: AppTextStyles.s14w400primary().font20().bold,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              Text(
                categoryDescription,
                style: AppTextStyles.s14w400primary().font16(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              if (vmData.categoryCourses.isEmpty) ...[
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        S.current.courseWillBeAvailableSoon,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s14w400primary().font20().bold,
                      ),
                      SizedBox(
                        height: Dimens.d8.responsive(),
                      ),
                      Assets.icons.icSadFace.svg(
                        width: Dimens.d100.responsive(),
                        height: Dimens.d100.responsive(),
                      ),
                    ],
                  ),
                ),
              ] else ...[
                for (final course in vmData.categoryCourses) ...[
                  GestureDetector(
                    onTap: () async {
                      await navigator.push(
                        AppRouteInfo.categoryCourseLesson(
                          categoryCourse: course,
                          languageCourseLearningContents:
                              course.languageCourseLearningContent,
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.d8.responsive(),
                        vertical: Dimens.d16.responsive(),
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.current.backgroundColor,
                        borderRadius: BorderRadius.circular(
                          Dimens.d16.responsive(),
                        ),
                        border: Border(
                          top: BorderSide(
                            color: AppColors.current.primaryColor,
                            width: Dimens.d2.responsive(),
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
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  switch (learningLanguage) {
                                    LearningLanguage.english =>
                                      course.englishName,
                                    LearningLanguage.vietnamese =>
                                      course.vietnameseName,
                                    LearningLanguage.french =>
                                      course.frenchName,
                                  },
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.s14w400primary()
                                      .font16()
                                      .bold,
                                ),
                                SizedBox(
                                  height: Dimens.d8.responsive(),
                                ),
                                Text(
                                  "${course.languageCourseLearningContent.length} ${S.current.lessons.toLowerCase()}",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      AppTextStyles.s14w400primary().font13(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimens.d8.responsive(),
                          ),
                          learningLanguage.icon.svg(
                            width: Dimens.d32.responsive(),
                            height: Dimens.d32.responsive(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimens.d8.responsive(),
                  ),
                ],
              ]
            ],
          ),
        );
      },
    );
  }

  @override
  void initViewModels() {
    viewModel.init(
      language: widget.language,
      category: widget.category,
      categoryCourses: widget.categoryCourses,
    );
  }

  @override
  String get screenName => 'CategoryCourse${widget.category.categoryId}';
}
