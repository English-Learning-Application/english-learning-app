import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart';

import '../../design.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({
    super.key,
    required this.color,
    this.borderRadius,
    this.child,
    this.padding,
    required this.onPressed,
  });

  final Color color;
  final double? borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  final VoidCallback onPressed;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        widget.borderRadius ?? Dimens.d8.responsive(),
      ),
      onTap: () {
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      child: AnimatedContainer(
        duration: DurationConstants.defaultGeneralDialogTransitionDuration,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border(
            top: BorderSide(
              color: FoundationColors.primary600,
              width: Dimens.d1.responsive(),
            ),
            left: BorderSide(
              color: FoundationColors.primary600,
              width: Dimens.d1.responsive(),
            ),
            right: BorderSide(
              color: FoundationColors.primary600,
              width:
                  _isPressed ? Dimens.d1.responsive() : Dimens.d4.responsive(),
            ),
            bottom: BorderSide(
              color: FoundationColors.primary600,
              width:
                  _isPressed ? Dimens.d1.responsive() : Dimens.d4.responsive(),
            ),
          ),
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? Dimens.d8.responsive(),
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
