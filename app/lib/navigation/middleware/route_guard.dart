import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../app.dart';

@Injectable()
class RouteGuard extends AutoRouteGuard {
  final IsLoggedInUseCase _isLoggedInUseCase;
  final GetCurrentPrefUserUseCase _getCurrentPrefUserUseCase;

  RouteGuard(
    this._isLoggedInUseCase,
    this._getCurrentPrefUserUseCase,
  );

  bool get isLoggedIn => runCatching(
        action: () {
          return _isLoggedInUseCase.execute(
            const IsLoggedInInput(),
          );
        },
      ).when(
        success: (output) => output.isLoggedIn,
        failure: (_) => false,
      );

  bool get isCurrentUserCompleteRegistration => runCatching(
        action: () {
          final getCurrentUserOutput = _getCurrentPrefUserUseCase.execute(
            const GetCurrentPrefUserInput(),
          );

          return getCurrentUserOutput.user;
        },
      ).when(
        success: (output) => output.isRegistered,
        failure: (_) => false,
      );

  bool get isCurrentUserEmailVerified => runCatching(
        action: () {
          final getCurrentUserOutput = _getCurrentPrefUserUseCase.execute(
            const GetCurrentPrefUserInput(),
          );

          return getCurrentUserOutput.user;
        },
      ).when(
        success: (output) => output.isEmailVerified,
        failure: (_) => false,
      );

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isLoggedIn) {
      if (!isCurrentUserCompleteRegistration) {
        router.replaceAll(
          [
            const CompleteRegistrationRoute(),
          ],
        );
        resolver.next(false);
        return;
      } else if (!isCurrentUserEmailVerified) {
        router.replaceAll(
          [
            const ValidateEmailRoute(),
          ],
        );
        resolver.next(false);
        return;
      }
      resolver.next(true);
    } else {
      router.replaceAll(
        [
          const LoginRoute(),
        ],
      );
      resolver.next(false);
    }
  }
}
