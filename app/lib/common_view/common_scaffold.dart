import 'package:flutter/material.dart';
import 'package:services/services.dart';

import '../app.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
    this.hideKeyboardWhenTouchOutside = true,
    this.resizeToAvoidBottomInset = true,
    this.extendBodyBehindAppBar = true,
    this.bodyInSafeArea = true,
    this.padding,
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final bool hideKeyboardWhenTouchOutside;
  final bool resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final bool bodyInSafeArea;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      appBar: appBar,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Shimmer(
        child: Padding(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: Dimens.d16.responsive(),
                vertical: Dimens.d20.responsive(),
              ).copyWith(top: 0),
          child: body,
        ).let((body) => bodyInSafeArea ? SafeArea(child: body) : body),
      ),
      drawer: drawer,
      floatingActionButton: floatingActionButton,
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtils.hideKeyboard(context),
            child: scaffold,
          )
        : scaffold;
  }
}
