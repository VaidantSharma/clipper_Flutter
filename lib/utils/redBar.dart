import 'package:flutter/material.dart';
import 'dart:math' as math;

class RedBar extends StatelessWidget {
  final double width;
  final double height;
  final double angle;

  const RedBar({
    Key? key,
    required this.width,
    this.height = 1.5,
    this.angle = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * (math.pi / 180), // Convert degrees to radians
      child: Container(
        width: width,
        height: height,
        color: Color(0xFFC60B31),
      ),
    );
  }
}