import 'package:flutter/material.dart';
import 'dart:math' as math;

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    // Bottom-left and bottom-right remain at the full width
    Path path = Path();
    path.moveTo(size.width * 0.46, 5); // (46% 0)
    path.lineTo(size.width * 0.558, 5); // (60% 0)
    path.lineTo(size.width*0.94, size.height * 0.84); // (100% 84%)
    path.lineTo(size.width * 0.89, size.height); // (89% 100%)
    path.lineTo(size.width * 0.13, size.height); // (13% 100%)
    path.lineTo(7, size.height * 0.85); // (0% 85%)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
