import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

@RoutePage()
class CommonFeatureRequiredSubscriptionPage extends StatefulWidget {
  const CommonFeatureRequiredSubscriptionPage({super.key});

  @override
  State<CommonFeatureRequiredSubscriptionPage> createState() =>
      _CommonFeatureRequiredSubscriptionPageState();
}

class _CommonFeatureRequiredSubscriptionPageState
    extends State<CommonFeatureRequiredSubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(body: _buildBody());
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.icCommunity.svg(
            width: Dimens.d100.responsive(),
            height: Dimens.d100.responsive(),
          ),
          SizedBox(
            height: Dimens.d20.responsive(),
          ),
          Text(
            S.current.thisFeatureIsOnlyAvailableForPremiumUsers,
            style: AppTextStyles.s14w400primary().font20().bold,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
