import 'package:app/navigation/middleware/is_logged_in_route_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
@LazySingleton()
class AppRouter extends $AppRouter {
  final RouteGuard _routeGuard;
  final IsLoggedInRouteGuard _isLoggedInRouteGuard;

  AppRouter(
    this._routeGuard,
    this._isLoggedInRouteGuard,
  );

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
        AutoRoute(
          page: OnBoardingRoute.page,
          path: '/onboarding',
        ),
        AutoRoute(
          page: CompleteRegistrationRoute.page,
          guards: [
            _isLoggedInRouteGuard,
          ],
          path: '/complete-registration',
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: MainRoute.page,
          path: '/main',
          children: [
            AutoRoute(
              page: HomeTabRoute.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: LanguageCourseRoute.page,
                ),
                AutoRoute(
                  page: LanguageCourseDetailsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: CourseTabRoute.page,
              maintainState: true,
              children: [
                AutoRoute(
                  initial: true,
                  page: CourseRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: AiChatTabRoute.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: AiChatBotRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTabRoute.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: FlashCardLearningRoute.page,
        ),
      ];
}

@RoutePage()
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage()
class CourseTabPage extends AutoRouter {
  const CourseTabPage({super.key});
}

@RoutePage()
class AiChatTabPage extends AutoRouter {
  const AiChatTabPage({super.key});
}

@RoutePage()
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
