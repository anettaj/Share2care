import 'package:flutter/material.dart';

class Reg_heading extends StatelessWidget {
  const Reg_heading({
    super.key,
    required this.screenHeight,
    required this.ftitle,
    required this.Stitle,
  });

  final double screenHeight;
  final String ftitle;
  final String Stitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:20,top: 55.0),
              child: Text(
                ftitle,
                style: TextStyle(
                  color: Color(0xFF4A465D),
                  fontSize: screenHeight * 0.060,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text(
                Stitle,
                style: TextStyle(
                  color: Color(0xFF4A465D),
                  fontSize: screenHeight * 0.032,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
