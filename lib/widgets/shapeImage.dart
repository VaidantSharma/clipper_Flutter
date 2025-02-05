import 'package:flutter/material.dart';

class ExternalHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.50, 10); // (50% 0)
    path.lineTo(size.width, size.height * 0.20); // (100% 30%)
    path.lineTo(size.width * 0.92, size.height * 0.82); // (92% 82%)
    path.lineTo(size.width * 0.52, size.height); // (52% 100%)
    path.lineTo(size.width * 0.08, size.height * 0.82); // (8% 82%)
    path.lineTo(0, size.height * 0.20); // (0% 30%)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class InternalHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.50, 0); // (50% 0)
    path.lineTo(size.width, size.height * 0.20); // (100% 30%)
    path.lineTo(size.width * 0.87, size.height * 0.77); // (85% 82%)
    path.lineTo(size.width * 0.52, size.height); // (52% 100%)
    path.lineTo(size.width * 0.13, size.height * 0.77); // (15% 82%)
    path.lineTo(0, size.height * 0.20); // (0% 30%)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}