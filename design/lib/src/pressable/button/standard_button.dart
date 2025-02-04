import 'package:app/app.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    super.key,
    this.buttonType = ButtonType.primary,
    this.buttonSize = ButtonSize.large,
    this.borderRadius,
    this.height,
    this.padding,
    this.text,
    this.leading,
    this.trailing,
    this.child,
    this.backgroundColor,
    this.leadingIconSize,
    this.trailingIconSize,
    this.textStyle,
    this.innerGap,
    this.onPressed,
    this.textAlign,
    this.shape = BoxShape.rectangle,
    this.isExpanded = true,
    this.borderColor,
  });

  final ButtonType buttonType;
  final ButtonSize buttonSize;
  final double? borderRadius;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final String? text;
  final double? leadingIconSize;
  final Widget? leading;
  final double? trailingIconSize;
  final Widget? trailing;
  final Widget? child;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final TextAlign? textAlign;
  final bool isExpanded;
  final BoxShape shape;
  final Color? borderColor;

  /// Gap between text/child and leading/trailing icon
  final double? innerGap;

  static StandardButton primary({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    TextAlign? textAlign,
    BoxShape shape = BoxShape.rectangle,
    bool isExpanded = true,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.primary,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  static StandardButton secondary({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    TextAlign? textAlign,
    BoxShape shape = BoxShape.rectangle,
    bool isExpanded = true,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.secondary,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  static StandardButton tertiary({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    bool isExpanded = true,
    BoxShape shape = BoxShape.rectangle,
    TextAlign? textAlign,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.tertiary,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  static StandardButton quaternary({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    bool isExpanded = true,
    BoxShape shape = BoxShape.rectangle,
    TextAlign? textAlign,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.quaternary,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  static StandardButton ghost({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    bool isExpanded = true,
    BoxShape shape = BoxShape.rectangle,
    TextAlign? textAlign,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.ghost,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  static StandardButton disabled({
    Key? key,
    ButtonSize buttonSize = ButtonSize.large,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    String? text,
    double? leadingIconSize,
    Widget? leading,
    double? trailingIconSize,
    Widget? trailing,
    Widget? child,
    TextStyle? textStyle,
    Color? backgroundColor,
    double? innerGap,
    Function()? onPressed,
    TextAlign? textAlign,
    BoxShape shape = BoxShape.rectangle,
    bool isExpanded = true,
    Color? borderColor,
  }) =>
      StandardButton(
        key: key,
        buttonType: ButtonType.disabled,
        buttonSize: buttonSize,
        borderRadius: borderRadius,
        height: height,
        padding: padding,
        text: text,
        leadingIconSize: leadingIconSize,
        leading: leading,
        trailingIconSize: trailingIconSize,
        trailing: trailing,
        textStyle: textStyle,
        backgroundColor: backgroundColor,
        innerGap: innerGap,
        onPressed: onPressed,
        textAlign: textAlign,
        isExpanded: isExpanded,
        shape: shape,
        borderColor: borderColor,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: shape == BoxShape.circle
              ? null
              : BorderRadius.circular(
                  borderRadius ?? Dimens.d16.responsive(),
                ),
          border: Border(
            top: BorderSide(
              color: borderColor ?? _borderColor(),
              width: Dimens.d2.responsive(),
            ),
            left: BorderSide(
              color: borderColor ?? _borderColor(),
              width: Dimens.d2.responsive(),
            ),
            right: BorderSide(
              color: borderColor ?? _borderColor(),
              width: Dimens.d2.responsive(),
            ),
            bottom: BorderSide(
              color: borderColor ?? _borderColor(),
              width: Dimens.d4.responsive(),
            ),
          ),
          color: backgroundColor ?? _backgroundColor(),
          shape: shape,
        ),
        height: height ?? _buttonHeight(),
        padding: padding ??
            EdgeInsets.symmetric(horizontal: Dimens.d16.responsive()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: leadingIconSize ?? _iconSize(),
              child: leading,
            ),
            SizedBox(
              width: innerGap ?? Dimens.d20.responsive(),
            ),
            (text != null
                        ? Text(
                            text ?? '',
                            textAlign: textAlign ?? TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: textStyle ??
                                _textStyle().copyWith(
                                  color: _textColor(),
                                ),
                          )
                        : child != null
                            ? child!
                            : const SizedBox.shrink())
                    .let(
                  (it) => isExpanded ? Expanded(child: it) : it,
                ) ??
                const SizedBox.shrink(),
            SizedBox(
              width: innerGap ?? Dimens.d20.responsive(),
            ),
            SizedBox(
              width: trailingIconSize ?? _iconSize(),
              child: trailing,
            ),
          ],
        ),
      ),
    );
  }

  double _buttonHeight() {
    switch (buttonSize) {
      case ButtonSize.large:
        return Dimens.d64.responsive();
      case ButtonSize.medium:
        return Dimens.d48.responsive();
      case ButtonSize.small:
        return Dimens.d32.responsive();
    }
  }

  double _iconSize() {
    switch (buttonSize) {
      case ButtonSize.large:
        return Dimens.d20.responsive();
      case ButtonSize.medium:
        return Dimens.d16.responsive();
      case ButtonSize.small:
        return Dimens.d12.responsive();
    }
  }

  TextStyle _textStyle() {
    switch (buttonSize) {
      case ButtonSize.large:
        return AppTextStyles.s14w400primary().font16().neutral50.bold;
      case ButtonSize.medium:
        return AppTextStyles.s14w400primary().font13().neutral50.bold;
      case ButtonSize.small:
        return AppTextStyles.s14w400primary().font11().neutral50.bold;
    }
  }

  Color _textColor() {
    switch (buttonType) {
      case ButtonType.primary:
      case ButtonType.secondary:
      case ButtonType.tertiary:
      case ButtonType.disabled:
        return FoundationColors.neutral50;
      default:
        return FoundationColors.secondary500;
    }
  }

  Color _borderColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return FoundationColors.primary200;
      case ButtonType.secondary:
        return FoundationColors.secondary500;
      case ButtonType.tertiary:
      case ButtonType.ghost:
        return Colors.transparent;
      case ButtonType.quaternary:
        return FoundationColors.neutral50;
      case ButtonType.disabled:
        return FoundationColors.neutral500;
    }
  }

  Color _backgroundColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return FoundationColors.primary200.withValues(
          alpha: 0.8,
        );
      case ButtonType.secondary:
        return FoundationColors.secondary500.withValues(
          alpha: 0.8,
        );
      case ButtonType.tertiary:
      case ButtonType.ghost:
        return Colors.transparent;
      case ButtonType.quaternary:
        return FoundationColors.neutral50;
      case ButtonType.disabled:
        return FoundationColors.neutral500;
    }
  }
}

enum ButtonSize {
  large,
  medium,
  small,
}

enum ButtonType {
  primary,
  secondary,
  tertiary,
  quaternary,
  ghost,
  disabled,
}
