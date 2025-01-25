import 'package:app/app.dart';
import 'package:app/features/main/viewmodels/main_view_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:localization/localization.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage, MainViewModel> {
  final _bottomBarKey = GlobalKey();

  @override
  Widget buildPage(BuildContext context) {
    return AutoTabsScaffold(
      key: _bottomBarKey,
      routes: (navigator as AppNavigatorImpl).tabRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        (navigator as AppNavigatorImpl).tabsRouter = tabsRouter;
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FoundationColors.primary50,
                AppColors.current.primaryColor,
              ],
              stops: const [0.0, 0.7],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            border: Border(
              top: BorderSide(
                color: AppColors.current.primaryColor,
                width: 0.5,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d16.responsive(),
            vertical: Dimens.d8.responsive(),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GNav(
                  onTabChange: (index) {
                    if (index == tabsRouter.activeIndex) {
                      (navigator as AppNavigatorImpl)
                          .popUntilRootOfCurrentBottomTab();
                    }
                    tabsRouter.setActiveIndex(index);
                  },
                  tabs: [
                    _buildNavButton(
                      icon: Icons.home_rounded,
                      text: S.current.home,
                    ),
                    _buildNavButton(
                      icon: Icons.book_rounded,
                      text: S.current.courses,
                    ),
                    _buildNavButton(
                      icon: Icons.chat_rounded,
                      text: S.current.aiChatbot,
                    ),
                    _buildNavButton(
                      icon: Icons.person_rounded,
                      text: S.current.profile,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  GButton _buildNavButton({
    required IconData icon,
    required String text,
  }) {
    return GButton(
      backgroundGradient: LinearGradient(
        colors: [
          AppColors.current.primaryColor,
          FoundationColors.neutral900,
        ],
        stops: const [0.0, 0.7],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      textStyle: AppTextStyles.s14w400primary().font12().regular.accent100,
      icon: icon,
      iconSize: Dimens.d24.responsive(),
      iconActiveColor: FoundationColors.accent100,
      iconColor: FoundationColors.accent100,
      gap: Dimens.d8.responsive(),
      duration: const Duration(milliseconds: 500),
      style: GnavStyle.google,
      text: text,
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'MainPage';
}
