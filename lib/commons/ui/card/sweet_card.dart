import 'package:flutter/material.dart';
import 'dart:ui';

class SweetCard extends StatelessWidget {
  final Widget child;
  final double blurSigmaX;
  final double blurSigmaY;
  final double borderRadius;
  final Color color;
  final BoxShadow? shadow;

  const SweetCard({
    Key? key,
    required this.child,
    this.blurSigmaX = 10.0,
    this.blurSigmaY = 10.0,
    this.borderRadius = 15.0,
    this.color = Colors.white30,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadow != null ? [shadow!] : [],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigmaX, sigmaY: blurSigmaY),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: color, // Adjust opacity as needed
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
