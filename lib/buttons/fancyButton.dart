import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final CustomClipper<Path> clipper; // Add clipper parameter

  const FancyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.clipper, // Assign the correct clipper here
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Material(
        color: Colors.grey[800],
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
