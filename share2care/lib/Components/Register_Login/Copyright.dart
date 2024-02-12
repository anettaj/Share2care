import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: screenHeight * 0.1,
        child: Text(
          'Share2Care is committed to protecting your privacy and data. By joining, you become a part of a community that shares and cares.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff4A465D)),
        ),
      ),
    );
  }
}

