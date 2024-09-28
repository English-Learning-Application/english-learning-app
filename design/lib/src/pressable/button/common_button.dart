import 'package:flutter/material.dart';
import 'package:app/app.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({
    super.key,
    this.borderRadius,
    this.color,
    this.gradient,
    required this.onPressed,
    required this.child,
    this.border,
    this.height,
    this.padding,
  });

  final double? borderRadius;
  final Color? color;
  final LinearGradient? gradient;
  final void Function() onPressed;
  final Widget child;
  final Border? border;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onPressed.call(),
      onTapDown: (_) => {
        setState(
          () {
            isPressed = true;
          },
        ),
      },
      onTapUp: (_) => {
        setState(
          () {
            isPressed = false;
          },
        ),
      },
      onTapCancel: () => {
        setState(
          () {
            isPressed = false;
          },
        ),
      },
      child: Container(
        alignment: Alignment.center,
        padding: widget.padding ?? EdgeInsets.all(Dimens.d16.responsive()),
        height: widget.height ?? Dimens.d56.responsive(),
        decoration: BoxDecoration(
          gradient: widget.gradient,
          color: isPressed
              ? widget.color?.withOpacity(0.5) ??
                  AppColors.current.primaryColor.withOpacity(0.5)
              : widget.color ?? AppColors.current.primaryColor,
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? Dimens.d8.responsive(),
          ),
          border: widget.border,
        ),
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}
