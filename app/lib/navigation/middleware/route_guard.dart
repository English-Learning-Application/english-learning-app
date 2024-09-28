import 'package:auto_route/auto_route.dart';
import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../app.dart';

@Injectable()
class RouteGuard extends AutoRouteGuard {
  final IsLoggedInUseCase _isLoggedInUseCase;

  RouteGuard(this._isLoggedInUseCase);

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

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isLoggedIn) {
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
