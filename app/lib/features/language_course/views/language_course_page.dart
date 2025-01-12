import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';

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
            isSelected: false,
            onTap: (level) {},
          );
        },
      ),
    );
  }

  @override
  void initViewModels() async {
    await viewModel.init();
  }

  @override
  String get screenName => 'LanguageCoursePage';

  Widget _buildCoursesList() {
    final isMobile = AppDimens.current.screenType.isMobile;
    final isTablet = AppDimens.current.screenType.isTablet;
    return GridView.builder(
      itemCount: 10,
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
        return CourseCard(
          borderRadius: Dimens.d8.responsive(),
          color: FoundationColors.primary500,
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d16.responsive(),
            vertical: Dimens.d8.responsive(),
          ),
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.language.languageName,
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
                  widget.language.icon.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                ],
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              Text(
                "${S.current.level}: A${index + 1}",
                style: AppTextStyles.s14w400primary().font14().secondary,
              ),
              SizedBox(
                height: Dimens.d8.responsive(),
              ),
              LearningType.values[index % LearningType.values.length].icon.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              LinearProgressIndicator(
                value: (index + 1) / 10,
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
    );
  }
}
