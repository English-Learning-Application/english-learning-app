import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'swap_subscription_plan_use_case.freezed.dart';

@Injectable()
class SwapSubscriptionPlanUseCase extends BaseFutureUseCase<
    SwapSubscriptionPlanInput, SwapSubscriptionPlanOutput> {
  final SubscriptionRepository _subscriptionRepository;

  const SwapSubscriptionPlanUseCase(this._subscriptionRepository);

  @override
  Future<SwapSubscriptionPlanOutput> buildUseCase(
      SwapSubscriptionPlanInput input) async {
    await _subscriptionRepository.swapSubscription(
      subscriptionId: input.subscriptionId,
      newSubscriptionId: input.newSubscriptionId,
    );
    return const SwapSubscriptionPlanOutput();
  }
}

@freezed
class SwapSubscriptionPlanInput extends BaseInput
    with _$SwapSubscriptionPlanInput {
  const factory SwapSubscriptionPlanInput({
    required String subscriptionId,
    required String newSubscriptionId,
  }) = _SwapSubscriptionPlanInput;
}

@freezed
class SwapSubscriptionPlanOutput extends BaseOutput
    with _$SwapSubscriptionPlanOutput {
  const factory SwapSubscriptionPlanOutput() = _SwapSubscriptionPlanOutput;
}
