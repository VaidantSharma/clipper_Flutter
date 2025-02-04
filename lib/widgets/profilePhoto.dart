import 'package:flutter/material.dart';

class ClippedImageWidget extends StatelessWidget {
  const ClippedImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomPolygonClipper(),
      child: Image.asset(
        'assets/photo.png', // Load image from assets
        width: 200,
        height: 200,
        fit: BoxFit.cover, // Ensures the image fills the shape
      ),
    );
  }
}

class CustomPolygonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.50, 0); // (50% 0)
    path.lineTo(size.width*0.995, size.height * 0.321); // (100% 30%)
    path.lineTo(size.width * 0.82, size.height * 0.78); // (88% 78%)
    path.lineTo(size.width * 0.52, size.height); // (52% 100%)
    path.lineTo(size.width * 0.18, size.height * 0.78); // (12% 78%)
    path.lineTo(0.2, size.height * 0.321); // (0% 31%)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}