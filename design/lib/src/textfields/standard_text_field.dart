import 'package:app/app.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class StandardTextField extends StatelessWidget {
  const StandardTextField({
    super.key,
    this.label,
    this.hint,
    required this.controller,
    this.filled = true,
    this.color,
    this.borderRadius,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.style,
    this.hintStyle,
    this.onChanged,
    this.textInputAction = TextInputAction.next,
    this.border,
  });
  final String? label;
  final String? hint;
  final TextEditingController controller;
  final bool filled;
  final Color? color;
  final BorderRadius? borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Function(String?)? onChanged;
  final TextInputAction textInputAction;
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: Dimens.d16.responsive(),
          horizontal: Dimens.d16.responsive(),
        ),
        labelText: label,
        hintText: hint,
        filled: filled,
        fillColor: color ?? FoundationColors.neutral200.withValues(alpha: 0.5),
        hintStyle:
            hintStyle ?? AppTextStyles.s14w400primary().font12().bold.grey,
        border: border ??
            OutlineInputBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(
                    Dimens.d16.responsive(),
                  ),
              borderSide: BorderSide(
                color: FoundationColors.secondary400.withValues(
                  alpha: 0.5,
                ),
                width: Dimens.d1.responsive(),
              ),
            ),
        enabledBorder: border ??
            OutlineInputBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(
                    Dimens.d16.responsive(),
                  ),
              borderSide: BorderSide(
                color: FoundationColors.secondary400.withValues(
                  alpha: 0.5,
                ),
                width: Dimens.d1.responsive(),
              ),
            ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      style: style ?? AppTextStyles.s14w400primary().font12().medium,
      obscureText: obscureText,
      controller: controller,
    );
  }
}
