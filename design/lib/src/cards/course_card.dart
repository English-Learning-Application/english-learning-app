import 'package:app/app.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.color,
    this.border,
    this.borderRadius,
    this.child,
    this.padding,
    required this.onPressed,
  });

  final Color color;
  final BoxBorder? border;
  final double? borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        borderRadius ?? Dimens.d8.responsive(),
      ),
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          border: border,
          borderRadius: BorderRadius.circular(
            borderRadius ?? Dimens.d8.responsive(),
          ),
        ),
        child: child,
      ),
    );
  }
}
