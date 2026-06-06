import 'package:flutter/material.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget page;

  FadePageRoute({required this.page})
      : super(
    pageBuilder:
        (_, animation, secondaryAnimation) =>
    page,

    transitionsBuilder:
        (_, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },

    transitionDuration:
    const Duration(milliseconds: 500),
  );
}