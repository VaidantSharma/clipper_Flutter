import 'package:flutter/material.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.black, // Background color for the bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInfoItem('350', 'Followers'),
          _buildVerticalDivider(),
          _buildInfoItem('20       ', 'Tournaments Played      '),
          _buildInfoItem('            350', '                Following'),
          _buildVerticalDivider(),
          _buildInfoItem('20', 'Tournaments Won'),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26),
        ),
        const SizedBox(height: 4), // Space between text elements
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 9.7),
        ),
      ],
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      width: 2, // Thickness of the bar
      height: 30, // Height of the bar
      margin: const EdgeInsets.symmetric(horizontal: 11), // Spacing around the bar
      color: Colors.white60, // Color of the bar
    );
  }
}
