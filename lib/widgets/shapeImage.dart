import 'package:flutter/material.dart';

class ExternalHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.50, 0); // (50% 0)
    path.lineTo(size.width, size.height * 0.30); // (100% 30%)
    path.lineTo(size.width * 0.92, size.height * 0.82); // (92% 82%)
    path.lineTo(size.width * 0.52, size.height); // (52% 100%)
    path.lineTo(size.width * 0.08, size.height * 0.82); // (8% 82%)
    path.lineTo(0, size.height * 0.30); // (0% 30%)
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
    path.lineTo(size.width, size.height * 0.30); // (100% 30%)
    path.lineTo(size.width * 0.85, size.height * 0.82); // (85% 82%)
    path.lineTo(size.width * 0.52, size.height); // (52% 100%)
    path.lineTo(size.width * 0.15, size.height * 0.82); // (15% 82%)
    path.lineTo(0, size.height * 0.30); // (0% 30%)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}