import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../app.dart';

@RoutePage()
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState
    extends BasePageState<SubscriptionPage, SubscriptionViewModel> {
  late final PageController _pageController = PageController()
    ..disposeBy(disposeBag);
  late final WebViewController _webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageFinished: (url) {
          if (url.contains('payments/returnUrl')) {
            viewModel.clearPaymentUrl();
          }
        },
      ),
    );

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: Dimens.d16.responsive(),
      ),
      appBar: CommonAppBar(
        titleText: S.current.subscription,
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() async {
    await viewModel.onInit();
  }

  Widget _buildBody() {
    return Selector<SubscriptionViewModel, SubscriptionViewModelData>(
      selector: (context, viewModel) => viewModel.viewModelData,
      shouldRebuild: (prev, next) {
        final differentSubscriptions = prev.subscriptions != next.subscriptions;
        final differentUrl = prev.paymentUrl != next.paymentUrl;

        if (differentUrl && next.paymentUrl.isNotEmpty) {
          _webViewController.loadRequest(
            Uri.parse(
              next.paymentUrl,
            ),
          );
        }

        return differentSubscriptions || differentUrl;
      },
      builder: (_, vmData, __) {
        final paymentUrl = vmData.paymentUrl;
        if (paymentUrl.isNotEmpty) {
          return WebViewWidget(
            controller: _webViewController,
          );
        }
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: vmData.subscriptions.length,
                itemBuilder: (_, index) {
                  final item = vmData.subscriptions[index];
                  return Selector<AppViewModel, AppViewModelData>(
                    selector: (_, viewModel) => viewModel.viewModelData,
                    shouldRebuild: (prev, next) {
                      return prev.currentUser != next.currentUser;
                    },
                    builder: (__, appVmData, _) {
                      final user = appVmData.currentUser;
                      final validSubscription = user.getValidSubscription();
                      return _SubscriptionItemPageView(
                        item: item,
                        index: index,
                        validSubscription: validSubscription,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: Dimens.d16.responsive()),
            SmoothPageIndicator(
              controller: _pageController,
              count: vmData.subscriptions.length,
              axisDirection: Axis.horizontal,
              onDotClicked: (i) async {
                await _pageController.animateToPage(
                  i,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              effect: ExpandingDotsEffect(
                expansionFactor: Dimens.d3.responsive(),
                spacing: Dimens.d8.responsive(),
                radius: Dimens.d16.responsive(),
                dotWidth: Dimens.d16.responsive(),
                dotHeight: Dimens.d8.responsive(),
                dotColor: FoundationColors.neutral100,
                activeDotColor: FoundationColors.primary100,
                paintStyle: PaintingStyle.fill,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  String get screenName => 'SubscriptionPage';
}

class _SubscriptionItemPageView extends StatelessWidget {
  const _SubscriptionItemPageView({
    super.key,
    required this.item,
    this.index = 0,
    this.validSubscription,
  });
  final int index;
  final Subscription item;
  final UserSubscription? validSubscription;

  static const List<Color> _colors = [
    FoundationColors.primary600,
    FoundationColors.error500,
    FoundationColors.success200,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _colors[index % _colors.length],
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Dimens.d16.responsive()),
                  Container(
                    decoration: const BoxDecoration(
                      color: FoundationColors.neutral100,
                      shape: BoxShape.circle,
                    ),
                    width: Dimens.d100.responsive(),
                    height: Dimens.d100.responsive(),
                    child: Center(
                      child: Assets.images.appIcon.image(
                        height: Dimens.d64.responsive(),
                        width: Dimens.d64.responsive(),
                      ),
                    ),
                  ),
                  Text(
                    item.name.localized,
                    style:
                        AppTextStyles.s14w400primary().secondary.font24().bold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Dimens.d8.responsive()),
                  Text(
                    item.description.localized,
                    style: AppTextStyles.s14w400primary().secondary.font16(),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Dimens.d8.responsive()),
                  Column(
                    children: [
                      ...item.benefits.map(
                        (benefit) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.d16.responsive(),
                              vertical: Dimens.d8.responsive(),
                            ),
                            child: Row(
                              children: [
                                Assets.icons.icCommunity.svg(
                                  height: Dimens.d24.responsive(),
                                  width: Dimens.d24.responsive(),
                                ),
                                SizedBox(width: Dimens.d8.responsive()),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        benefit.name.localized,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .secondary
                                            .font16(),
                                      ),
                                      SizedBox(
                                        height: Dimens.d4.responsive(),
                                      ),
                                      Text(
                                        benefit.description.localized,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.s14w400primary()
                                            .secondary
                                            .font12(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: Dimens.d8.responsive()),
                  Text(
                    "${NumUtils.formatVietnameseCurrency(item.price)} VNĐ/${item.duration} ${item.durationLength.unitName}",
                    style:
                        AppTextStyles.s14w400primary().secondary.font24().bold,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Dimens.d16.responsive()),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.d16.responsive(),
              vertical: Dimens.d8.responsive(),
            ),
            child: StandardButton(
              buttonSize: ButtonSize.small,
              buttonType: validSubscription == null
                  ? ButtonType.primary
                  : ButtonType.secondary,
              onPressed: () async {
                if (validSubscription != null &&
                    validSubscription?.subscriptionId == item.id) {
                  return;
                } else if (validSubscription != null) {
                  await context.read<SubscriptionViewModel>().swapSubscription(
                        subscriptionId: validSubscription!.subscriptionId,
                        newSubscriptionId: item.id,
                      );
                } else if (validSubscription == null) {
                  await context
                      .read<SubscriptionViewModel>()
                      .createPayment(item.id);
                }
              },
              text: validSubscription == null
                  ? S.current.purchase
                  : validSubscription?.subscriptionId == item.id
                      ? S.current.alreadyPurchased
                      : S.current.switchText,
            ),
          ),
        ],
      ),
    );
  }
}
