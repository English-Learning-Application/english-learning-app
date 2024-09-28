import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:services/services.dart';

import '../../app.dart';

class CommonMasonryGridView<T> extends StatelessWidget {
  const CommonMasonryGridView({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    required this.gridDelegateBuilder,
    this.animateTransitions = true,
    this.transitionDuration =
        DurationConstants.defaultListGridTransitionDuration,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.scrollController,
    this.primary,
    this.physics,
    this.padding,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.cacheExtent,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.shrinkWrap = false,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
  });
  final bool animateTransitions;
  final Duration transitionDuration;

  final CommonPagingController<T> pagingController;
  final Widget Function(
    BuildContext context,
    T item,
    int index,
  ) itemBuilder;
  final SliverSimpleGridDelegateBuilder gridDelegateBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? scrollController;
  final bool? primary;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double? cacheExtent;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    final builderDelegate = PagedChildBuilderDelegate(
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

    final PagedMasonryGridView pagedMasonryGridView =
        PagedMasonryGridView<int, T>(
      pagingController: pagingController.pagingController,
      builderDelegate: builderDelegate,
      gridDelegateBuilder: gridDelegateBuilder,
      physics: physics,
      addSemanticIndexes: addSemanticIndexes,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
      crossAxisSpacing: crossAxisSpacing,
      dragStartBehavior: dragStartBehavior,
      keyboardDismissBehavior: keyboardDismissBehavior,
      mainAxisSpacing: mainAxisSpacing,
      padding: padding,
      primary: primary,
      restorationId: restorationId,
      reverse: reverse,
      scrollController: scrollController,
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
    );
    return pagedMasonryGridView;
  }
}
