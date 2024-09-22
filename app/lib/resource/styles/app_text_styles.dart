import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:app/resource/gen/fonts.gen.dart';

import '../../app.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const _defaultLetterSpacing = 0.5;

  static const TextStyle _baseTextStyle = TextStyle(
    letterSpacing: _defaultLetterSpacing,
    fontFamily: FontFamily.manrope,
  );

  static TextStyle s14w400primary({
    double? tablet,
    double? ultraTablet,
  }) {
    return _baseTextStyle.merge(
      TextStyle(
        fontSize: Dimens.d14.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
        fontWeight: FontWeight.w400,
        color: AppColors.current.primaryTextColor,
      ),
    );
  }
}

extension TextColorExtensions on TextStyle {
  TextStyle get primary => copyWith(color: AppColors.current.primaryTextColor);

  TextStyle get secondary =>
      copyWith(color: AppColors.current.secondaryTextColor);

  TextStyle get white => copyWith(color: Colors.white);

  TextStyle get black => copyWith(color: Colors.black);

  TextStyle get grey => copyWith(color: Colors.grey);

  TextStyle get primaryAppColor =>
      copyWith(color: AppColors.current.primaryColor);

  // Success Text Colors
  TextStyle get success50 => copyWith(color: FoundationColors.success50);

  TextStyle get success100 => copyWith(color: FoundationColors.success100);

  TextStyle get success200 => copyWith(color: FoundationColors.success200);

  TextStyle get success300 => copyWith(color: FoundationColors.success300);

  TextStyle get success400 => copyWith(color: FoundationColors.success400);

  TextStyle get success500 => copyWith(color: FoundationColors.success500);

  TextStyle get success600 => copyWith(color: FoundationColors.success600);

  TextStyle get success700 => copyWith(color: FoundationColors.success700);

  TextStyle get success800 => copyWith(color: FoundationColors.success800);

  TextStyle get success900 => copyWith(color: FoundationColors.success900);

  // Accent Text Colors
  TextStyle get accent50 => copyWith(color: FoundationColors.accent50);

  TextStyle get accent100 => copyWith(color: FoundationColors.accent100);

  TextStyle get accent200 => copyWith(color: FoundationColors.accent200);

  TextStyle get accent300 => copyWith(color: FoundationColors.accent300);

  TextStyle get accent400 => copyWith(color: FoundationColors.accent400);

  TextStyle get accent500 => copyWith(color: FoundationColors.accent500);

  TextStyle get accent600 => copyWith(color: FoundationColors.accent600);

  TextStyle get accent700 => copyWith(color: FoundationColors.accent700);

  TextStyle get accent800 => copyWith(color: FoundationColors.accent800);

  TextStyle get accent900 => copyWith(color: FoundationColors.accent900);

  // Warning Text Colors
  TextStyle get warning50 => copyWith(color: FoundationColors.warning50);

  TextStyle get warning100 => copyWith(color: FoundationColors.warning100);

  TextStyle get warning200 => copyWith(color: FoundationColors.warning200);

  TextStyle get warning300 => copyWith(color: FoundationColors.warning300);

  TextStyle get warning400 => copyWith(color: FoundationColors.warning400);

  TextStyle get warning500 => copyWith(color: FoundationColors.warning500);

  TextStyle get warning600 => copyWith(color: FoundationColors.warning600);

  TextStyle get warning700 => copyWith(color: FoundationColors.warning700);

  TextStyle get warning800 => copyWith(color: FoundationColors.warning800);

  TextStyle get warning900 => copyWith(color: FoundationColors.warning900);

  // Secondary Text Colors
  TextStyle get secondary50 => copyWith(color: FoundationColors.secondary50);

  TextStyle get secondary100 => copyWith(color: FoundationColors.secondary100);

  TextStyle get secondary200 => copyWith(color: FoundationColors.secondary200);

  TextStyle get secondary300 => copyWith(color: FoundationColors.secondary300);

  TextStyle get secondary400 => copyWith(color: FoundationColors.secondary400);

  TextStyle get secondary500 => copyWith(color: FoundationColors.secondary500);

  TextStyle get secondary600 => copyWith(color: FoundationColors.secondary600);

  TextStyle get secondary700 => copyWith(color: FoundationColors.secondary700);

  TextStyle get secondary800 => copyWith(color: FoundationColors.secondary800);

  TextStyle get secondary900 => copyWith(color: FoundationColors.secondary900);

  // Neutral Text Colors
  TextStyle get neutral50 => copyWith(color: FoundationColors.neutral50);

  TextStyle get neutral100 => copyWith(color: FoundationColors.neutral100);

  TextStyle get neutral200 => copyWith(color: FoundationColors.neutral200);

  TextStyle get neutral300 => copyWith(color: FoundationColors.neutral300);

  TextStyle get neutral400 => copyWith(color: FoundationColors.neutral400);

  TextStyle get neutral500 => copyWith(color: FoundationColors.neutral500);

  TextStyle get neutral600 => copyWith(color: FoundationColors.neutral600);

  TextStyle get neutral700 => copyWith(color: FoundationColors.neutral700);

  TextStyle get neutral800 => copyWith(color: FoundationColors.neutral800);

  TextStyle get neutral900 => copyWith(color: FoundationColors.neutral900);

  // Error Text Colors
  TextStyle get error50 => copyWith(color: FoundationColors.error50);

  TextStyle get error100 => copyWith(color: FoundationColors.error100);

  TextStyle get error200 => copyWith(color: FoundationColors.error200);

  TextStyle get error300 => copyWith(color: FoundationColors.error300);

  TextStyle get error400 => copyWith(color: FoundationColors.error400);

  TextStyle get error500 => copyWith(color: FoundationColors.error500);

  TextStyle get error600 => copyWith(color: FoundationColors.error600);

  TextStyle get error700 => copyWith(color: FoundationColors.error700);

  TextStyle get error800 => copyWith(color: FoundationColors.error800);

  TextStyle get error900 => copyWith(color: FoundationColors.error900);
}

extension FontWeightExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
}

extension FontSizeExtensions on TextStyle {
  TextStyle font10({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d10.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font11({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d11.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font12({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d12.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font13({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d13.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font14({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d14.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font15({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d15.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font16({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d16.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font17({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d17.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font18({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d18.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font19({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d19.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font20({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d20.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font21({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d21.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font22({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d22.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font23({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d23.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font24({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d24.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font25({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d25.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font26({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d26.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font27({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d27.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font28({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d28.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font29({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d29.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font30({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d30.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font31({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d31.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font32({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d32.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font33({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d33.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font34({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d34.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font35({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d35.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font36({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d36.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font37({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d37.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font38({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d38.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font39({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d39.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font40({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d40.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font41({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d41.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font42({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d42.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font43({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d43.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font44({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d44.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font45({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d45.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font46({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d46.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font47({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d47.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font48({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d48.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font49({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d49.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font50({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d50.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font51({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d51.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font52({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d52.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font53({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d53.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font54({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d54.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font55({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d55.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font56({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d56.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font57({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d57.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font58({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d58.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font59({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d59.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font60({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d60.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font61({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d61.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font62({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d62.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font63({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d63.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font64({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d64.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font65({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d65.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font66({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d66.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font67({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d67.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font68({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d68.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font69({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d69.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font70({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d70.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font71({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d71.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font72({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d72.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font73({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d73.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font74({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d74.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font75({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d75.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font76({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d76.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font77({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d77.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font78({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d78.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font79({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d79.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font80({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d80.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font81({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d81.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font82({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d82.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font83({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d83.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font84({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d84.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font85({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d85.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font86({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d86.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font87({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d87.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font88({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d88.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font89({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d89.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font90({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d90.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font91({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d91.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font92({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d92.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font93({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d93.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font94({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d94.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font95({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d95.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font96({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d96.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font97({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d97.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font98({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d98.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font99({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d99.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );

  TextStyle font100({
    double? tablet,
    double? ultraTablet,
  }) =>
      copyWith(
        fontSize: Dimens.d100.responsive(
          tablet: tablet,
          ultraTablet: ultraTablet,
        ),
      );
}
