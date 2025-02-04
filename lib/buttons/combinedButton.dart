import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for vibration feedback

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final CustomClipper<Path> clipper;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.clipper,
    required this.width,
    required this.height,
    this.backgroundColor = Colors.grey,
    this.borderColor = Colors.white,
    this.borderWidth = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = text == '\n  Edit \nProfile' ? Colors.white : Colors.black;

    return ClipPath(
      clipper: clipper,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            HapticFeedback.heavyImpact(); // 🔥 Vibrate when tapped
            onPressed();
          },
          child: Stack(
            children: [
              SizedBox(
                width: width,
                height: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: borderColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(borderWidth),
                child: ClipPath(
                  clipper: clipper,
                  child: SizedBox(
                    width: width - (borderWidth * 2),
                    height: height - (borderWidth * 2),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            text,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
