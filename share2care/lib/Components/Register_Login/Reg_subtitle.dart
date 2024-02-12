import 'package:flutter/material.dart';

class Reg_subtitle extends StatelessWidget {
  const Reg_subtitle({
    super.key,
    required this.Name,
  });
  final String Name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        Name,
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }
}

