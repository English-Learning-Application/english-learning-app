import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
@LazySingleton()
class AppRouter extends $AppRouter {
  final RouteGuard _routeGuard;

  AppRouter(this._routeGuard);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(page: OnBoardingRoute.page, path: '/onboarding'),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: MainRoute.page,
          path: '/main',
          children: [
            AutoRoute(
              page: HomeTabRoute.page,
              path: 'home',
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: PhoneticTabRoute.page,
            ),
            AutoRoute(
              page: AiChatTabRoute.page,
            ),
            AutoRoute(
              page: ProfileTabRoute.page,
            ),
          ],
        ),
      ];
}

@RoutePage()
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage()
class PhoneticTabPage extends AutoRouter {
  const PhoneticTabPage({super.key});
}

@RoutePage()
class AiChatTabPage extends AutoRouter {
  const AiChatTabPage({super.key});
}

@RoutePage()
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
