import 'package:flutter/material.dart';
import 'package:funky_backgrounds/funky_backgrounds.dart';

class PositionedFunkyBackground extends StatelessWidget {
  final double? start;
  final double? top;
  final double? end;
  final double? bottom;
  final double? width;
  final double? height;
  final Size size;
  final Widget? child;
  final FunkyBackgroundPainter painter;

  const PositionedFunkyBackground({
    Key? key,
    this.start,
    this.top,
    this.end,
    this.bottom,
    this.width,
    this.height,
    this.size = Size.zero,
    this.child,
    required this.painter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      start: start,
      top: top,
      bottom: bottom,
      end: end,
      height: height,
      width: width,
      child: FunkyBackground(
        size: size,
        painter: painter,
        child: child,
      ),
    );
  }
}
