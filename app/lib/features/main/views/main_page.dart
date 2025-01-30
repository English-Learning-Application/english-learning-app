import 'package:app/app.dart';
import 'package:app/features/main/viewmodels/main_view_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        return NavigationBar(
          indicatorColor: AppColors.current.primaryColor.withValues(
            alpha: 0.2,
          ),
          backgroundColor: AppColors.current.backgroundColor,
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (index) {
            if (index == navigator.currentBottomTab) {
              navigator.popUntilRootOfCurrentBottomTab();
              return;
            }
            tabsRouter.setActiveIndex(index);
          },
          destinations: [
            NavigationDestination(
              icon: Assets.icons.icHome.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              label: S.current.home,
            ),
            NavigationDestination(
              icon: Assets.icons.icBookSquare.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              label: S.current.courses,
            ),
            NavigationDestination(
              icon: Assets.icons.icMessageQuestion.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              label: S.current.aiChatbot,
            ),
            NavigationDestination(
              icon: Assets.icons.icProfileCircle.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              label: S.current.profile,
            ),
          ],
        );
      },
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'MainPage';
}
