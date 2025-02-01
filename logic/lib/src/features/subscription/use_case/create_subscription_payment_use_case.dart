import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'create_subscription_payment_use_case.freezed.dart';

@Injectable()
class CreateSubscriptionPaymentUseCase extends BaseFutureUseCase<
    CreateSubscriptionPaymentInput, CreateSubscriptionPaymentOutput> {
  final SubscriptionRepository _subscriptionRepository;

  const CreateSubscriptionPaymentUseCase(this._subscriptionRepository);

  @override
  Future<CreateSubscriptionPaymentOutput> buildUseCase(
      CreateSubscriptionPaymentInput input) async {
    final result = await _subscriptionRepository.createPaymentUrl(
      input.subscriptionId,
    );

    return CreateSubscriptionPaymentOutput(paymentUrl: result);
  }
}

@freezed
class CreateSubscriptionPaymentInput extends BaseInput
    with _$CreateSubscriptionPaymentInput {
  const factory CreateSubscriptionPaymentInput({
    required String subscriptionId,
  }) = _CreateSubscriptionPaymentInput;
}

@freezed
class CreateSubscriptionPaymentOutput extends BaseOutput
    with _$CreateSubscriptionPaymentOutput {
  const factory CreateSubscriptionPaymentOutput({
    required String paymentUrl,
  }) = _CreateSubscriptionPaymentOutput;
}
