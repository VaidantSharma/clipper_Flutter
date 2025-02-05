import 'package:flutter/material.dart';
import 'dart:math' as math;

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    // Bottom-left and bottom-right remain at the full width
    Path path = Path();
    path.moveTo(size.width * 0.43, 0);
    path.lineTo(size.width * 0.57, 0);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width * 0.84, size.height);
    path.lineTo(size.width * 0.15, size.height);
    path.lineTo(0, size.height * 0.8);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
