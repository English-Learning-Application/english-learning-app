import 'dart:math';

import 'package:flutter/material.dart';

enum SelectedAnchorItem {
  start,
  middle,
  end,
}

class CommonPagingScrollSnapPhysics extends ScrollPhysics {
  final double itemSize;
  final SelectedAnchorItem selectedAnchorItem;
  final double maxWidth;
  final double maxHeight;
  final bool isHorizontal;

  const CommonPagingScrollSnapPhysics({
    required this.itemSize,
    required this.selectedAnchorItem,
    required this.maxWidth,
    required this.maxHeight,
    required this.isHorizontal,
    super.parent,
  });

  @override
  bool get allowImplicitScrolling => false;

  @override
  CommonPagingScrollSnapPhysics applyTo(ScrollPhysics? ancestor) {
    return CommonPagingScrollSnapPhysics(
      itemSize: itemSize,
      selectedAnchorItem: selectedAnchorItem,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      isHorizontal: isHorizontal,
      parent: buildParent(ancestor),
    );
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = toleranceFor(
      FixedScrollMetrics(
        minScrollExtent: null,
        maxScrollExtent: null,
        pixels: null,
        viewportDimension: null,
        axisDirection: AxisDirection.down,
        devicePixelRatio: WidgetsBinding
            .instance.platformDispatcher.views.first.devicePixelRatio,
      ),
    );
    final target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  double _getPixels(ScrollMetrics position, double page) {
    return min(
      max(
        page * itemSize - max(0, _getPadding()),
        position.minScrollExtent,
      ),
      position.maxScrollExtent,
    );
  }

  double _getTargetPixels(
      ScrollMetrics position, Tolerance tolerance, double velocity) {
    double page = _getPage(position);
    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }
    return _getPixels(position, page.roundToDouble());
  }

  double _getPage(ScrollMetrics position) {
    double page = (position.pixels + _getPadding()) / itemSize;
    return page;
  }

  double _getPadding() {
    double padding = 0;
    switch (selectedAnchorItem) {
      case SelectedAnchorItem.start:
        padding = 0;
        break;
      case SelectedAnchorItem.middle:
        padding = ((isHorizontal ? maxWidth : maxHeight) - itemSize) / 2;
        break;
      case SelectedAnchorItem.end:
        padding = (isHorizontal ? maxWidth : maxHeight) - itemSize;
        break;
    }
    return padding;
  }
}
