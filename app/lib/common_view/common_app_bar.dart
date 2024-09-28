import 'package:design/design.dart';
import 'package:logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart';
import 'package:provider/provider.dart';

import '../app.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  CommonAppBar({
    super.key,
    this.height,
    this.backgroundColor = FoundationColors.neutral50,
    this.leadingIconSize,
    this.trailingIconSize,
    this.elevation = 0,
    this.leadingIcon = LeadingIcon.back,
    this.useRootNavigator = true,
    this.onLeadingPressed,
    this.leadingIconColor,
    this.padding,
    this.titleText,
    this.title,
    this.leading,
    this.trailing,
    this.titleStyle,
  }) : preferredSize = Size.fromHeight(
          height ?? Dimens.d36.responsive(),
        );

  final double? height;
  final Color backgroundColor;
  final double? leadingIconSize;
  final double? trailingIconSize;
  final double elevation;
  final LeadingIcon leadingIcon;
  final bool useRootNavigator;
  final Color? leadingIconColor;
  final Function()? onLeadingPressed;
  final EdgeInsetsGeometry? padding;
  final String? titleText;
  final Widget? title;
  final Widget? leading;
  final Widget? trailing;
  final TextStyle? titleStyle;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: elevation,
      toolbarHeight: preferredSize.height,
      title: StandardButton.ghost(
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: Dimens.d4.responsive(),
              vertical: Dimens.d6.responsive(),
            ),
        leading: leading ??
            (leadingIcon == LeadingIcon.hamburger ||
                    leadingIcon == LeadingIcon.none
                ? null
                : GestureDetector(
                    onTap: onLeadingPressed ??
                        () => context.read<AppNavigator>().popTop(
                              useRootNavigator: useRootNavigator,
                            ),
                    child: _buildIcon(
                      leadingIcon == LeadingIcon.close
                          ? Assets.icons.icQuit
                          : Assets.icons.icArrowLeft,
                    ),
                  )),
        leadingIconSize: leadingIconSize ?? Dimens.d24.responsive(),
        trailingIconSize: trailingIconSize ?? Dimens.d24.responsive(),
        backgroundColor: backgroundColor,
        trailing: trailing,
        height: preferredSize.height,
        textStyle: titleStyle ?? AppTextStyles.s14w400primary().medium.font13(),
        text: titleText,
        child: title,
      ),
    );
  }

  Widget _buildIcon(SvgGenImage svg) {
    return svg.svg(
      colorFilter: leadingIconColor
              ?.let((it) => ColorFilter.mode(it, BlendMode.srcIn)) ??
          FoundationColors.secondary500
              .let((it) => ColorFilter.mode(it, BlendMode.srcIn)),
      width: Dimens.d24.responsive(),
      height: Dimens.d24.responsive(),
    );
  }
}

enum LeadingIcon {
  back,
  close,
  hamburger,
  none,
}
