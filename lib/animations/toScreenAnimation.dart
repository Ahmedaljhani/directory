import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ToScreenAnimation extends PageRouteBuilder {
  final page;

  ToScreenAnimation({this.page})
      : super(
            pageBuilder: (context, animation, animationtwo) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
}
