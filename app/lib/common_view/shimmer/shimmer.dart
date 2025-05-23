import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shimmer extends StatefulWidget {
  const Shimmer({super.key, this.child});

  final Widget? child;

  static ShimmerState? of(BuildContext context) {
    return context.findAncestorStateOfType<ShimmerState>();
  }

  @override
  State<Shimmer> createState() => ShimmerState();
}

class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  static const _shimmerGradient = LinearGradient(
    colors: [
      Color(0xffebebf4),
      Color(0xffdcdce1),
      Color(0xffebebf4),
    ],
    stops: [0.1, 0.3, 0.4],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  LinearGradient get gradient => LinearGradient(
        colors: _shimmerGradient.colors,
        stops: _shimmerGradient.stops,
        begin: _shimmerGradient.begin,
        end: _shimmerGradient.end,
        transform: _SlidingGradientTransform(slidePercent: _controller.value),
      );

  bool get isSized => (context.findRenderObject() as RenderBox).hasSize;

  Size get size => (context.findRenderObject() as RenderBox).size;

  Listenable get shimmerChanges => _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..repeat(
        min: -0.5,
        max: 1.5,
        period: const Duration(
          milliseconds: 1000,
        ),
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Offset getDescendantOffset({
    required RenderBox descendant,
    Offset offset = Offset.zero,
  }) {
    final shimmerBox = context.findRenderObject() as RenderBox?;

    return descendant.localToGlobal(offset, ancestor: shimmerBox);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0, 0);
  }
}
