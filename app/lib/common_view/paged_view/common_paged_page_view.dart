import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:services/services.dart';

import '../../app.dart';

class CommonPagedPageView<T> extends StatelessWidget {
  const CommonPagedPageView({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    this.animateTransitions = false,
    this.transitionDuration = DurationConstants.defaultPageTransitionDuration,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.allowImplicitScrolling = false,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.pageController,
    this.scrollBehavior,
    this.scrollDirection = Axis.horizontal,
    this.dragStartBehavior = DragStartBehavior.start,
    this.onPageChanged,
    this.padEnds = true,
    this.pageSnapping = true,
    this.physics,
    this.reverse = false,
    this.shrinkWrapFirstPageIndicators = false,
  });
  final CommonPagingController<T> pagingController;
  final Widget Function(
    BuildContext context,
    T item,
    int index,
  ) itemBuilder;
  final bool animateTransitions;
  final Duration transitionDuration;

  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final bool allowImplicitScrolling;
  final Clip clipBehavior;
  final String? restorationId;
  final PageController? pageController;
  final ScrollBehavior? scrollBehavior;
  final Axis scrollDirection;
  final DragStartBehavior dragStartBehavior;
  final void Function(int)? onPageChanged;
  final bool padEnds;
  final bool pageSnapping;
  final ScrollPhysics? physics;
  final bool reverse;
  final bool shrinkWrapFirstPageIndicators;

  @override
  Widget build(BuildContext context) {
    final builderDelegate = PagedChildBuilderDelegate<T>(
      itemBuilder: itemBuilder,
      animateTransitions: animateTransitions,
      transitionDuration: transitionDuration,
      firstPageErrorIndicatorBuilder: (_) =>
          const CommonFirstPageErrorIndicator(),
      firstPageProgressIndicatorBuilder: (_) =>
          const CommonFirstPageProgressIndicator(),
      newPageErrorIndicatorBuilder: (_) => const CommonNewPageErrorIndicator(),
      newPageProgressIndicatorBuilder: (_) =>
          const CommonNewPageProgressIndicator(),
      noItemsFoundIndicatorBuilder: (_) => const CommonNoItemsFoundIndicator(),
      noMoreItemsIndicatorBuilder: (_) => const CommonNoMoreItemsIndicator(),
    );
    final PagedPageView pagedPageView = PagedPageView<int, T>(
      pagingController: pagingController.pagingController,
      builderDelegate: builderDelegate,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      allowImplicitScrolling: allowImplicitScrolling,
      clipBehavior: clipBehavior,
      restorationId: restorationId,
      pageController: pageController,
      scrollBehavior: scrollBehavior,
      scrollDirection: scrollDirection,
      dragStartBehavior: dragStartBehavior,
      onPageChanged: onPageChanged,
      padEnds: padEnds,
      pageSnapping: pageSnapping,
      physics: physics,
      reverse: reverse,
      shrinkWrapFirstPageIndicators: shrinkWrapFirstPageIndicators,
    );
    return pagedPageView;
  }
}
