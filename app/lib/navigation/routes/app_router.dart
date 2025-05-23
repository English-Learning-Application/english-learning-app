import 'package:app/navigation/middleware/chat_bot_subscription_route_guard.dart';
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
  final ChatBotSubscriptionRouteGuard _chatBotSubscriptionRouteGuard;
  final CommunitySubscriptionRouteGuard _communitySubscriptionRouteGuard;

  AppRouter(
    this._routeGuard,
    this._isLoggedInRouteGuard,
    this._chatBotSubscriptionRouteGuard,
    this._communitySubscriptionRouteGuard,
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
          page: ValidateEmailRoute.page,
          guards: [
            _isLoggedInRouteGuard,
          ],
          path: '/validate-email',
        ),
        AutoRoute(
          page: CommunityFlowRoute.page,
          path: '/community',
          children: [
            AutoRoute(
              page: CommunityRoute.page,
              initial: true,
              guards: [
                _communitySubscriptionRouteGuard,
              ],
            ),
            AutoRoute(
              page: CommonFeatureRequiredSubscriptionRoute.page,
            ),
            AutoRoute(
              page: CommunityTopicRoute.page,
            ),
            AutoRoute(
              page: GroupChatRoute.page,
            ),
            AutoRoute(
              page: PrivateChatRoute.page,
            ),
          ],
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
                AutoRoute(
                  page: CategoryCourseDetailsRoute.page,
                ),
                AutoRoute(
                  page: CategoryCourseLessonRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: AiChatTabRoute.page,
              maintainState: false,
              children: [
                AutoRoute(
                  page: AiChatBotRoute.page,
                  guards: [
                    _chatBotSubscriptionRouteGuard,
                  ],
                  initial: true,
                ),
                AutoRoute(
                  page: CommonFeatureRequiredSubscriptionRoute.page,
                ),
                AutoRoute(
                  page: AiChatBotDetailsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: TodoTabRoute.page,
              maintainState: true,
              children: [
                AutoRoute(
                  page: TodoRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: TodoDetailsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTabRoute.page,
              maintainState: true,
              guards: [
                _isLoggedInRouteGuard,
              ],
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: ValidatePhoneNumberRoute.page,
                  guards: [
                    _isLoggedInRouteGuard,
                  ],
                ),
                AutoRoute(
                  page: SubscriptionRoute.page,
                  guards: [
                    _isLoggedInRouteGuard,
                  ],
                ),
                AutoRoute(
                  page: EditProfileRoute.page,
                  guards: [
                    _isLoggedInRouteGuard,
                  ],
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: ResetPasswordFlowRoute.page,
          children: [
            AutoRoute(
              page: ResetPasswordRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: ResetPasswordConfirmationRoute.page,
            ),
          ],
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: FlashCardLearningRoute.page,
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: QuizLearningRoute.page,
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: MatchingLearningRoute.page,
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: PronunciationLearningRoute.page,
        ),
        AutoRoute(
          guards: [
            _routeGuard,
          ],
          page: ListeningLearningRoute.page,
        ),
        AutoRoute(
          page: AchievementTrackerRoute.page,
          guards: [
            _routeGuard,
          ],
        ),
        AutoRoute(
          page: ProgressionRoute.page,
          guards: [
            _routeGuard,
          ],
        ),
        AutoRoute(
          page: BookmarkCourseFlowRoute.page,
          guards: [
            _routeGuard,
          ],
          children: [
            AutoRoute(
              page: BookmarkCoursesRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: LanguageCourseRoute.page,
            ),
            AutoRoute(
              page: LanguageCourseDetailsRoute.page,
            ),
            AutoRoute(
              page: CategoryCourseLessonRoute.page,
            ),
          ],
        ),
      ];
}

@RoutePage()
class CommunityFlowPage extends AutoRouter {
  const CommunityFlowPage({super.key});
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
class TodoTabPage extends AutoRouter {
  const TodoTabPage({super.key});
}

@RoutePage()
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}

@RoutePage()
class ResetPasswordFlowPage extends AutoRouter {
  const ResetPasswordFlowPage({super.key});
}

@RoutePage()
class BookmarkCourseFlowPage extends AutoRouter {
  const BookmarkCourseFlowPage({super.key});
}
