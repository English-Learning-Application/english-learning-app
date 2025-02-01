import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../app.dart';
import '../widgets/first_on_boarding_view.dart';
import '../widgets/second_on_boarding_view.dart';
import '../widgets/third_on_boarding_view.dart';

@RoutePage()
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState
    extends BasePageState<OnBoardingPage, OnboardingViewModel> {
  final _pageViewController = PageController();
  final List<Widget> _onBoardingPages = const [
    FirstOnBoardingView(),
    SecondOnBoardingView(),
    ThirdOnBoardingView(),
  ];

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.zero,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                viewModel.updateCurrentIndex(index);
              },
              controller: _pageViewController,
              children: _onBoardingPages,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.d16.responsive(),
              vertical: Dimens.d30.responsive(),
            ),
            child: SmoothPageIndicator(
              controller: _pageViewController,
              count: _onBoardingPages.length,
              axisDirection: Axis.horizontal,
              onDotClicked: (i) async {
                await _pageViewController.animateToPage(
                  i,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              effect: ExpandingDotsEffect(
                expansionFactor: Dimens.d3.responsive(),
                spacing: Dimens.d8.responsive(),
                radius: Dimens.d16.responsive(),
                dotWidth: Dimens.d16.responsive(),
                dotHeight: Dimens.d8.responsive(),
                dotColor: FoundationColors.neutral100,
                activeDotColor: FoundationColors.primary100,
                paintStyle: PaintingStyle.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: StandardButton(
              text: S.current.getStarted,
              buttonSize: ButtonSize.medium,
              onPressed: () async {
                await navigator.replaceAll(
                  [
                    const AppRouteInfo.login(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'OnBoardingView';
}
