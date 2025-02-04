import 'dart:math' as math;
import 'package:flutter/material.dart';

class TrapezoidClipper extends CustomClipper<Path> {
  final double height;
  final double topWidthFactor;
  final double bottomWidthFactor;
  final double slantAngle;

  TrapezoidClipper({
    required this.height,
    required this.topWidthFactor,
    required this.bottomWidthFactor,
    this.slantAngle = 60,
  }) : assert(topWidthFactor >= 0 && topWidthFactor <= 1),
        assert(bottomWidthFactor >= 0 && bottomWidthFactor <= 1);

  @override
  Path getClip(Size size) {
    final path = Path();
    final double width = size.width;

    final double topWidth = width * topWidthFactor;
    final double bottomWidth = width * bottomWidthFactor;

    // Convert slant angle to radians manually
    final double slantRadians = slantAngle * (math.pi / 180);

    // Calculate horizontal offset caused by slant
    final double horizontalOffset = height / math.tan(slantRadians);

    // Calculate the x-coordinates
    final double topStartX = (width - topWidth) / 2;
    final double bottomStartX = (width - bottomWidth) / 2;

    // Move to top-left
    path.moveTo(topStartX, 0);

    // Draw top-right
    path.lineTo(topStartX + topWidth, 0);

    // Draw bottom-right (correcting horizontal offset application)
    path.lineTo(bottomStartX + bottomWidth - horizontalOffset, height);

    // Draw bottom-left (proper offset application)
    path.lineTo(bottomStartX + horizontalOffset, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(TrapezoidClipper oldClipper) {
    return oldClipper.height != height ||
        oldClipper.topWidthFactor != topWidthFactor ||
        oldClipper.bottomWidthFactor != bottomWidthFactor ||
        oldClipper.slantAngle != slantAngle;
  }
}
