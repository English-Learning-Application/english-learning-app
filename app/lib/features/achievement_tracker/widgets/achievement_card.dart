import 'package:flutter/material.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
    required this.achievementName,
    required this.achievementDescription,
    required this.achievementIcon,
    this.isAchieved = false,
  });

  final String achievementName;
  final String achievementDescription;
  final String achievementIcon;
  final bool isAchieved;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
        color: isAchieved
            ? AppColors.current.primaryColor.withValues(alpha: 0.7)
            : AppColors.current.backgroundColor,
        border: Border(
          top: BorderSide(
            color: AppColors.current.primaryColor,
            width: Dimens.d2.responsive(),
          ),
          left: BorderSide(
            color: AppColors.current.primaryColor,
            width: Dimens.d2.responsive(),
          ),
          right: BorderSide(
            color: AppColors.current.primaryColor,
            width: Dimens.d2.responsive(),
          ),
          bottom: BorderSide(
            color: AppColors.current.primaryColor,
            width: Dimens.d6.responsive(),
          ),
        ),
      ),
      child: Row(
        children: [
          ImagesProvider.networkImage(
            imageUrl: achievementIcon,
            width: Dimens.d60.responsive(),
            height: Dimens.d60.responsive(),
          ),
          SizedBox(width: Dimens.d16.responsive()),
          Flexible(
            child: Column(
              children: [
                Text(
                  achievementName,
                  style: AppTextStyles.s14w400primary().font16().bold.let(
                        (it) => isAchieved
                            ? it.copyWith(
                                color: AppColors.current.secondaryTextColor,
                              )
                            : it,
                      ),
                ),
                SizedBox(height: Dimens.d8.responsive()),
                Text(
                  achievementDescription,
                  style: AppTextStyles.s14w400primary().font12().medium.let(
                        (it) => isAchieved
                            ? it.copyWith(
                                color: AppColors.current.secondaryTextColor,
                              )
                            : it,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
