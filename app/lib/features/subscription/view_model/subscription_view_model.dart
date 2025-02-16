part of 'subscription.dart';

@Injectable()
class SubscriptionViewModel extends BaseViewModel<SubscriptionViewModelData> {
  final GetAllSubscriptionUseCase _getAllSubscriptionUseCase;
  final CreateSubscriptionPaymentUseCase _createSubscriptionPaymentUseCase;
  final SwapSubscriptionPlanUseCase _swapSubscriptionPlanUseCase;
  SubscriptionViewModel(
    this._getAllSubscriptionUseCase,
    this._createSubscriptionPaymentUseCase,
    this._swapSubscriptionPlanUseCase,
  ) : super(const SubscriptionViewModelData());

  Future<void> onInit() async {
    await runViewModelCatching(
      action: () async {
        final resp = await _getAllSubscriptionUseCase.execute(
          const GetAllSubscriptionInput(),
        );

        updateData(
          viewModelData.copyWith(subscriptions: resp.subscriptions),
        );
      },
    );
  }

  Future<void> createPayment(String subscriptionId) async {
    await runViewModelCatching(
      action: () async {
        final resp = await _createSubscriptionPaymentUseCase.execute(
          CreateSubscriptionPaymentInput(subscriptionId: subscriptionId),
        );

        updateData(
          viewModelData.copyWith(paymentUrl: resp.paymentUrl),
        );
      },
    );
  }

  Future<void> swapSubscription({
    required String subscriptionId,
    required String newSubscriptionId,
  }) async {
    await runViewModelCatching(
      action: () async {
        await _swapSubscriptionPlanUseCase.execute(
          SwapSubscriptionPlanInput(
            subscriptionId: subscriptionId,
            newSubscriptionId: newSubscriptionId,
          ),
        );
        await appViewModel.appRefreshUser(false);
      },
    );
  }

  void clearPaymentUrl() async {
    updateData(
      viewModelData.copyWith(paymentUrl: ''),
    );
    await runViewModelCatching(
      action: () async {
        await appViewModel.appRefreshUser(false);
      },
    );
  }
}
