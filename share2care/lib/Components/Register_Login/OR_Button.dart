import 'package:flutter/material.dart';

class OR_Button extends StatelessWidget {
  const OR_Button({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth * 0.3,
          child: Divider(
            height: 1,
            color: Color(0xff4A465D),
          ),
        ),
        Text(
          ' OR ',
          style: TextStyle(color: Color(0xff4A465D)),
        ),
        SizedBox(
          width: screenWidth * 0.3,
          child: Divider(
            height: 1,
            color: Color(0xff4A465D),
          ),
        ),
      ],
    );
  }
}
