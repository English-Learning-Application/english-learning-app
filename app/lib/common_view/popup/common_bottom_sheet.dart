import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet({
    super.key,
    required this.child,
    required this.title,
  });

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.current.backgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            Dimens.d16.responsive(),
          ),
        ),
      ),
      padding: EdgeInsets.all(
        Dimens.d16.responsive(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox.shrink(),
              Text(
                title,
                style: AppTextStyles.s14w400primary().medium.font16(),
              ),
              GestureDetector(
                child: Assets.icons.icClose.svg(
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                ),
                onTap: () {
                  context.read<AppNavigator>().pop();
                },
              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}
