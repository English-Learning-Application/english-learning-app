import 'package:flutter/material.dart';
import 'package:services/services.dart';

import 'shimmer.dart';

class LoadingShimmer extends StatefulWidget {
  const LoadingShimmer({
    super.key,
    required this.child,
    this.loadingWidget,
    required this.isLoading,
  });

  final Widget child;
  final Widget? loadingWidget;
  final bool isLoading;

  @override
  State<LoadingShimmer> createState() => _LoadingShimmerState();
}

class _LoadingShimmerState extends State<LoadingShimmer> with LogMixin {
  Listenable? _shimmerChanges;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_shimmerChanges != null) {
      _shimmerChanges?.removeListener(_onShimmerChange);
    }
    _shimmerChanges = Shimmer.of(context)?.shimmerChanges;
    if (_shimmerChanges != null) {
      _shimmerChanges?.addListener(_onShimmerChange);
    }
  }

  @override
  void dispose() {
    _shimmerChanges?.removeListener(_onShimmerChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isLoading) {
      return widget.child;
    }

    final shimmer = Shimmer.of(context);
    if (shimmer == null || !shimmer.isSized) {
      return const SizedBox();
    }

    final shimmerSize = shimmer.size;
    final gradient = shimmer.gradient;
    final descendant = context.findRenderObject() as RenderBox?;
    Offset offsetWithinShimmer = Offset.zero;
    try {
      offsetWithinShimmer = descendant != null
          ? shimmer.getDescendantOffset(descendant: descendant)
          : Offset.zero;
    } catch (e) {
      logE(e);
    }

    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(
            -offsetWithinShimmer.dx,
            -offsetWithinShimmer.dy,
            shimmerSize.width,
            shimmerSize.height,
          ),
        );
      },
      child:
          widget.loadingWidget != null ? widget.loadingWidget! : widget.child,
    );
  }

  void _onShimmerChange() {
    if (widget.isLoading) {
      setState(() {});
    }
  }
}
