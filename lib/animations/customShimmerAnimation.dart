import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CustomShimmerAnimation extends StatelessWidget {
  final Duration duration;
  final Duration interval;
  final Color color;
  final double colorOpacity;
  final bool enabled;
  final ShimmerDirection direction;
  final Widget child;

  const CustomShimmerAnimation({
    this.duration = const Duration(seconds: 6),
    this.interval = const Duration(seconds: 3),
    this.color = Colors.white,
    this.colorOpacity = 0.3,
    this.enabled = true,
    this.direction = const ShimmerDirection.fromLTRB(),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: duration,
      interval: interval,
      color: color.withOpacity(colorOpacity),
      enabled: enabled,
      direction: direction,
      child: child,
    );
  }
}
