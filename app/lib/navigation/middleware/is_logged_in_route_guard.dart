import 'package:app/navigation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class IsLoggedInRouteGuard extends AutoRouteGuard {
  final IsLoggedInUseCase _isLoggedInUseCase;

  IsLoggedInRouteGuard(this._isLoggedInUseCase);

  bool get isLoggedIn => runCatching(action: () {
        return _isLoggedInUseCase.execute(const IsLoggedInInput());
      }).when(
        success: (output) => output.isLoggedIn,
        failure: (error) => false,
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
