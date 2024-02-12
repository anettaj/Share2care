import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle Google sign-in here
      },
      child: Container(
        padding: EdgeInsets.all(1.0),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/google icon.png',
              height: 30,
            ),
            SizedBox(width: 10),
            Text('Continue with Google'),
          ],
        ),
      ),
    );
  }
}
