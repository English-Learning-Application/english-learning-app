import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_all_subscriptions_use_case.freezed.dart';

@Injectable()
class GetAllSubscriptionUseCase extends BaseFutureUseCase<
    GetAllSubscriptionInput, GetAllSubscriptionOutput> {
  final SubscriptionRepository _subscriptionRepository;

  const GetAllSubscriptionUseCase(this._subscriptionRepository);

  @override
  Future<GetAllSubscriptionOutput> buildUseCase(
      GetAllSubscriptionInput input) async {
    final subscriptions =
        await _subscriptionRepository.getActiveSubscriptions();
    return GetAllSubscriptionOutput(subscriptions: subscriptions);
  }
}

@freezed
class GetAllSubscriptionInput extends BaseInput with _$GetAllSubscriptionInput {
  const factory GetAllSubscriptionInput() = _GetAllSubscriptionInput;
}

@freezed
class GetAllSubscriptionOutput extends BaseOutput
    with _$GetAllSubscriptionOutput {
  const factory GetAllSubscriptionOutput({
    required List<Subscription> subscriptions,
  }) = _GetAllSubscriptionOutput;
}
