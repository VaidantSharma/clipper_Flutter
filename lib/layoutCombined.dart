import 'package:button_task/utils/redBar.dart';
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
              top: screenWidth * 0.01,
              child: Container(
                width: screenWidth,  // Ensure full width
                height: 271,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_1.png'),  // Fixed path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 236,
              child: InfoBar(),
            ),
            Positioned(
              left: 35.68,
              top: 295.23, // Adjusted positioning
              child: CustomButton(
                text: 'Messages',
                onPressed: () => _handleButtonClick(0),
                clipper: TrapezoidClipper(
                  height: buttonHeight,
                  topWidthFactor: 1,
                  bottomWidthFactor: 0.8,
                  slantAngle: 66,
                ),
                width: 152.66,
                height: 37.06,
                backgroundColor: _selectedButtonIndex == 0
                    ? Color(0xFFB2AFAF)
                    : Color(0xFFC5D1D8),
                borderColor: Colors.black,
                borderWidth: 2.0,
              ),
            ),
            Positioned(
              left: 234.39,
              top: 295.23,
              child: CustomButton(
                text: 'Invite',
                onPressed: () => _handleButtonClick(1),
                clipper: TrapezoidClipper(
                  height: buttonHeight,
                  topWidthFactor: 1,
                  bottomWidthFactor: 0.8,
                  slantAngle: 67,
                ),
                width: 152.66,
                height: 37.06,
                backgroundColor: _selectedButtonIndex == 1
                    ? Color(0xFFB2AFAF)
                    : Color(0xFFC5D1D8),
                borderColor: Colors.black,
                borderWidth: 2.0,
              ),
            ),
            Positioned(
              top: 236,
              child: RedBar(width: 450,height: 2.5,),
            ),
            Positioned(
              top: 243,
              left: 157,
              child: RedBar(width: 15,height: 2.5,angle: 80 ,),
            ),
            Positioned(
              top: 243,
              right: 153.2,
              child: RedBar(width: 15,height: 2.5,angle: -80 ,),
            ),
            Positioned(
              top: 258,
              left: 162,
              child: RedBar(width: 49,height: 3,angle: 25 ,),
            ),
            Positioned(
              top: 259,
              right: 159,
              child: RedBar(width: 46,height: 3,angle: -25 ,),
            ),
            Positioned(
              top: 236,
              child: RedBar(width: 450,height: 2.5,),
            ),
            Positioned(
              left: 158.5,
              top: 161,
              child: ClipPath(
                clipper: ExternalHexagonClipper(),
                child: Container(
                  width: 98.33,
                  height: 108.73,
                  color: Color(0xFF868A8D),
                ),
              ),
            ),
            Positioned(
              left: 158.5,
              top: 161,
                child: ClipPath(
                  clipper: InternalHexagonClipper(),
                  child: Container(
                    width: 98.33,
                    height: 108.73,
                    color: Color(0xFFC4C6C6),
                  ),
                ),
            ),
            Positioned(
              left: 162.5,
              top: 161,
              child: ClippedImageWidget(),
            ),
            Positioned(
              top: 278.98, // Adjusted position
              left: 169.31,
              child: CustomButton(
                text: '\n  Edit \nProfile',
                onPressed: () => _handleButtonClick(2),
                clipper: TriangleClipper(),
                width: 83.37,
                height: 72.35,
                backgroundColor: _selectedButtonIndex == 2
                    ? Color(0xFFE53935)
                    : Color(0xFF0E181B),
                borderColor: Colors.white,
                borderWidth: 2.0,
              ),
            ),
            Positioned(
              top: 290,
                child: RedBar(width: 28,),
            ),
            Positioned(
              top: 312,
              left: 14.5,
              child: RedBar(width: 53,angle: 59,),
            ),
            Positioned(
              top: 335,
              left: 53,
              child: RedBar(width: 109,),
            ),
            Positioned(
              top: 345,
              left: 156,
              child: RedBar(width: 29,angle: 50,),
            ),
            Positioned(
              top: 357,
              left: 179,
              child: RedBar(width: 65,),
            ),//Center one
            Positioned(
              top: 290,
              right: 0.1,
              child: RedBar(width: 17,),
            ),
            Positioned(
              top: 312,
              right: 14.5-11.5,
              child: RedBar(width: 53,angle: -59,),
            ),
            Positioned(
              top: 335,
              right: 53-11.5,
              child: RedBar(width: 109,),
            ),
            Positioned(
              top: 345,
              right: 156-11.5,
              child: RedBar(width: 29,angle: -50,),
            ),

          ],
        );
      },
    );
  }
}