import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'has_subscription_use_case.freezed.dart';

@Injectable()
class HasSubscriptionUseCase
    extends BaseFutureUseCase<HasSubscriptionInput, HasSubscriptionOutput> {
  final AppRepository _appRepository;
  final SubscriptionRepository _subscriptionRepository;

  const HasSubscriptionUseCase(
    this._appRepository,
    this._subscriptionRepository,
  );

  @override
  Future<HasSubscriptionOutput> buildUseCase(HasSubscriptionInput input) async {
    final prefUser = _appRepository.getUserPreference();
    final subscriptions =
        await _subscriptionRepository.getActiveSubscriptions();

    final userValidSubscription = prefUser.getValidSubscription();
    if (userValidSubscription == null) {
      return const HasSubscriptionOutput(
        hasChatBotSubscription: false,
        hasCommunitySubscription: false,
      );
    }

    final benefits = subscriptions
        .firstWhere(
          (element) => element.id == userValidSubscription.subscriptionId,
        )
        .benefits;

    final hasChatBotSubscription = benefits.firstWhereOrNull(
            (element) => element.name == 'ACCESS_TO_AI_CHAT_BOT') !=
        null;
    final hasCommunitySubscription = benefits.firstWhereOrNull(
            (element) => element.name == 'ACCESS_TO_COMMUNITY') !=
        null;

    return HasSubscriptionOutput(
      hasChatBotSubscription: hasChatBotSubscription,
      hasCommunitySubscription: hasCommunitySubscription,
    );
  }
}

@freezed
class HasSubscriptionInput extends BaseInput with _$HasSubscriptionInput {
  const factory HasSubscriptionInput() = _HasSubscriptionInput;
}

@freezed
class HasSubscriptionOutput extends BaseOutput with _$HasSubscriptionOutput {
  const factory HasSubscriptionOutput({
    required bool hasChatBotSubscription,
    required bool hasCommunitySubscription,
  }) = _HasSubscriptionOutput;
}
