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
  void initViewModels() {}

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
                onTap: () {},
              );
            },
            itemCount: LearningLanguage.values.length,
          ),
        ),
      ],
    );
  }

  Widget _buildMyInProgressCourses() {
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
        GridView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Dimens.d10.responsive(),
            mainAxisSpacing: Dimens.d10.responsive(),
            childAspectRatio: 0.9.responsive(),
          ),
          itemBuilder: (_, index) {
            final language =
                LearningLanguage.values[index % LearningLanguage.values.length];
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
                      language.icon.svg(
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
                  LearningType.values[index % LearningType.values.length].icon
                      .svg(
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
        ),
      ],
    );
  }

  @override
  String get screenName => 'Home';
}
