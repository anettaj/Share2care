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
      height: screenHeight*0.18,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 50,
            child: Text(
              ftitle,
              style: TextStyle(
                color: Color(0xFF4A465D),
                fontSize: screenHeight * 0.060,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 110,
            child: Text(
              Stitle,
              style: TextStyle(
                color: Color(0xFF4A465D),
                fontSize: screenHeight * 0.032,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
