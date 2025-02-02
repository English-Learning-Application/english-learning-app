import 'package:app/app.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ChatBotSubscriptionRouteGuard extends AutoRouteGuard {
  final HasSubscriptionUseCase _hasSubscriptionUseCase;
  const ChatBotSubscriptionRouteGuard(
    this._hasSubscriptionUseCase,
  );

  Future<bool> get hasChatBotSubscription => runCatchingAsync(
        action: () async {
          final output = await _hasSubscriptionUseCase
              .execute(const HasSubscriptionInput());
          return output;
        },
      ).then(
        (result) => result.when(
          success: (output) => output.hasChatBotSubscription,
          failure: (_) => false,
        ),
      );

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await hasChatBotSubscription) {
      resolver.next(true);
    } else {
      router.push(
        const CommonFeatureRequiredSubscriptionRoute(),
      );
      resolver.next(false);
    }
  }
}
