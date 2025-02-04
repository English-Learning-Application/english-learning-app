import 'package:app/app.dart';
import 'package:app/features/course/view_models/course.dart';
import 'package:auto_route/annotations.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends BasePageState<CoursePage, CourseViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Column(
        children: [
          _buildHeader(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Expanded(
            child: Selector<CourseViewModel, CourseViewModelData>(
              selector: (_, viewModel) => viewModel.viewModelData,
              shouldRebuild: (prev, curr) {
                return prev.categoryCourses != curr.categoryCourses ||
                    prev.categories != curr.categories;
              },
              builder: (_, vmData, __) {
                final learningLanguage = vmData.learningLanguage;
                return ListView.separated(
                  itemBuilder: (_, index) {
                    final category = vmData.categories[index];
                    return _buildCategoryCourses(
                      index: index,
                      category: category,
                      learningLanguage: learningLanguage,
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: Dimens.d16.responsive(),
                    );
                  },
                  itemCount: vmData.categories.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            RichText(
              text: TextSpan(
                text: "${S.current.choose} \n",
                style: AppTextStyles.s14w400primary().bold.font24(),
                children: [
                  TextSpan(
                    text: S.current.yourCategory.toLowerCase(),
                    style: AppTextStyles.s14w400primary().font24(),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        Selector<CourseViewModel, CourseViewModelData>(
          selector: (_, viewModel) => viewModel.viewModelData,
          shouldRebuild: (prev, curr) {
            return prev.learningLanguage != curr.learningLanguage;
          },
          builder: (_, vmData, __) {
            return DropdownButtonHideUnderline(
              child: DropdownButton2<LearningLanguage>(
                items: LearningLanguage.values.map(
                  (e) {
                    return DropdownMenuItem<LearningLanguage>(
                      value: e,
                      child: e.icon.svg(
                        width: Dimens.d24.responsive(),
                        height: Dimens.d24.responsive(),
                      ),
                    );
                  },
                ).toList(),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    color: AppColors.current.primaryColor,
                    borderRadius: BorderRadius.circular(
                      Dimens.d8.responsive(),
                    ),
                  ),
                ),
                style: AppTextStyles.s14w400primary().font16(),
                alignment: Alignment.center,
                value: vmData.learningLanguage,
                onChanged: (value) {
                  viewModel.changeLearningLanguage(value!);
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildCategoryCourses({
    required int index,
    required Category category,
    required LearningLanguage learningLanguage,
  }) {
    final categoryName = switch (learningLanguage) {
      LearningLanguage.english => category.englishName,
      LearningLanguage.french => category.frenchName,
      LearningLanguage.vietnamese => category.vietnameseName,
    };
    final categoryDescription = switch (learningLanguage) {
      LearningLanguage.english => category.englishDescription,
      LearningLanguage.french => category.frenchDescription,
      LearningLanguage.vietnamese => category.vietnameseDescription,
    };
    return GestureDetector(
      onTap: () {
        viewModel.selectCategoryCourse(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.d16.responsive(),
          vertical: Dimens.d8.responsive(),
        ),
        decoration: BoxDecoration(
          color: AppColors.current.primaryColor.withValues(alpha: 0.8),
          borderRadius: BorderRadius.circular(
            Dimens.d8.responsive(),
          ),
          border: Border(
            left: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d2.responsive(),
            ),
            right: BorderSide(
              color: AppColors.current.primaryColor,
              width: Dimens.d2.responsive(),
            ),
            top: BorderSide(
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
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryName,
                    style:
                        AppTextStyles.s14w400primary().bold.font16().secondary,
                  ),
                  SizedBox(
                    height: Dimens.d8.responsive(),
                  ),
                  Text(
                    categoryDescription,
                    style: AppTextStyles.s14w400primary().font14().secondary,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Dimens.d16.responsive(),
            ),
            ImagesProvider.networkImage(
              imageUrl: category.categoryImage,
              width: Dimens.d64.responsive(),
              height: Dimens.d64.responsive(),
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit();
  }

  @override
  String get screenName => 'CoursePage';
}
