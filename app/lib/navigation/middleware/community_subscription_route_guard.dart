import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../app.dart';

@Injectable()
class CommunitySubscriptionRouteGuard extends AutoRouteGuard {
  final HasSubscriptionUseCase _hasSubscriptionUseCase;
  const CommunitySubscriptionRouteGuard(
    this._hasSubscriptionUseCase,
  );

  Future<bool> get hasCommunitySubscription => runCatchingAsync(
        action: () async {
          final output = await _hasSubscriptionUseCase
              .execute(const HasSubscriptionInput());
          return output;
        },
      ).then(
        (result) => result.when(
          success: (output) => output.hasCommunitySubscription,
          failure: (_) => false,
        ),
      );

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await hasCommunitySubscription) {
      resolver.next(true);
    } else {
      router.push(
        const CommonFeatureRequiredSubscriptionRoute(),
      );
      resolver.next(false);
    }
  }
}
