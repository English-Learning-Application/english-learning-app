import 'package:app/app.dart';
import 'package:app/features/course/view_models/course.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildCategoryCourses(
              title: "Food",
              courses: [
                "Fine Dining",
                "Fast Food",
                "Street Food",
              ],
            ),
            _buildCategoryCourses(
              title: S.current.travel,
              courses: [
                "Air Travel",
                "Train Travel",
                "Bus Travel",
              ],
            ),
          ],
        ),
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
    required String title,
    required List<String> courses,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        Text(
          title,
          style: AppTextStyles.s14w400primary().bold.font16(),
        ),
        SizedBox(
          height: Dimens.d16.responsive(),
        ),
        SizedBox(
          height: Dimens.d180.responsive(),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            separatorBuilder: (_, __) {
              return SizedBox(
                width: Dimens.d8.responsive(),
              );
            },
            itemBuilder: (_, index) {
              final course = courses[index];
              return Container(
                width: Dimens.d120.responsive(),
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d16.responsive(),
                  vertical: Dimens.d8.responsive(),
                ),
                decoration: BoxDecoration(
                  color: AppColors.current.primaryColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(
                    Dimens.d8.responsive(),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      course,
                      style: AppTextStyles.s14w400primary().font14().bold,
                    ),
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    SizedBox(
                      width: Dimens.d80.responsive(),
                      height: Dimens.d80.responsive(),
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Positioned.fill(
                            child: CircularProgressIndicator(
                              value: 0.75,
                              strokeWidth: Dimens.d2.responsive(),
                              backgroundColor: FoundationColors.neutral50,
                            ),
                          ),
                          Center(
                            child: Text(
                              "75%",
                              style:
                                  AppTextStyles.s14w400primary().font16().bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    StandardButton(
                      onPressed: () {},
                      text: S.current.learn,
                      innerGap: 0,
                      trailingIconSize: 0,
                      leadingIconSize: 0,
                      textStyle: AppTextStyles.s14w400primary()
                          .font12()
                          .light
                          .secondary,
                      buttonSize: ButtonSize.small,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'CoursePage';
}
