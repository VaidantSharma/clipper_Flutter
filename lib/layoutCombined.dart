import 'package:button_task/widgets/infoBar.dart';
import 'package:button_task/widgets/shapeImage.dart';
import 'package:flutter/material.dart';
import 'package:button_task/buttons/centerButton.dart';
import 'package:button_task/buttons/SideButton.dart';
import 'package:button_task/buttons/combinedButton.dart';
import 'package:button_task/widgets/profilePhoto.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedButtonIndex = -1;

  void _handleButtonClick(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        // Calculate button dimensions based on screen width
        double buttonWidth = screenWidth * 0.45;
        double buttonHeight = screenHeight * 0.1; // Slightly adjusted height
        double centerButtonSize = constraints.maxWidth * 0.15;

        return Stack(
          children: [
            Positioned(
              top: screenWidth * 0.1,
              child: Container(
                width: screenWidth,  // Ensure full width
                height: screenHeight * 0.44,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_1.png'),  // Fixed path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.037,
              top: screenHeight * 0.52, // Adjusted positioning
              child: CustomButton(
                text: 'Messages',
                onPressed: () => _handleButtonClick(0),
                clipper: TrapezoidClipper(
                  height: buttonHeight,
                  topWidthFactor: 1,
                  bottomWidthFactor: 0.8,
                  slantAngle: 66,
                ),
                width: buttonWidth,
                height: buttonHeight,
                backgroundColor: _selectedButtonIndex == 0
                    ? Color(0xFFE53935)
                    : Color(0xFFB2AFAF),
                borderColor: Colors.black,
                borderWidth: 2.0,
              ),
            ),
            Positioned(
              right: screenWidth * 0.036,
              top: screenHeight * 0.52,
              child: CustomButton(
                text: 'Invite',
                onPressed: () => _handleButtonClick(1),
                clipper: TrapezoidClipper(
                  height: buttonHeight,
                  topWidthFactor: 1,
                  bottomWidthFactor: 0.8,
                  slantAngle: 67,
                ),
                width: buttonWidth,
                height: buttonHeight,
                backgroundColor: _selectedButtonIndex == 1
                    ? Color(0xFFE53935)
                    : Color(0xFFB2AFAF),
                borderColor: Colors.black,
                borderWidth: 2.0,
              ),
            ),
            Positioned(
              top: screenHeight*0.45,
              child: InfoBar(),
            ),
            Positioned(
              left: screenWidth*0.248,
              top: screenHeight*0.27,
              child: ClipPath(
                clipper: ExternalHexagonClipper(),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Color.fromRGBO(105, 102, 102, 1.0),
                ),
              ),
            ),
            Positioned(
              left: screenWidth*0.248,
                top: screenHeight*0.27,
                child: ClipPath(
                  clipper: InternalHexagonClipper(),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey,
                  ),
                ),
            ),
            Positioned(
              left: screenWidth*0.248,
              top: screenHeight*0.265,
              child: ClippedImageWidget(),
            ),
            Positioned(
              top: screenHeight * 0.52, // Adjusted position
              left: screenWidth / 2 - (centerButtonSize * 2*1.1) / 2,
              child: CustomButton(
                text: '\n  Edit \nProfile',
                onPressed: () => _handleButtonClick(2),
                clipper: TriangleClipper(),
                width: centerButtonSize * 2*1.1,
                height: centerButtonSize * 1.5*1.15,
                backgroundColor: _selectedButtonIndex == 2
                    ? Color(0xFFE53935)
                    : Color(0xFF333333),
                borderColor: Colors.white,
                borderWidth: 2.0,
              ),
            ),

          ],
        );
      },
    );
  }
}