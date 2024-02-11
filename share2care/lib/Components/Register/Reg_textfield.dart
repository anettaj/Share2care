import 'package:flutter/material.dart';

class Reg_textfield extends StatelessWidget {
  const Reg_textfield({
    Key? key,
    required this.textFieldFocus,
    this.nextFocusNode,
    required this.color,
    required this.borderColor,
    required this.myController,
  }) : super(key: key);

  final FocusNode textFieldFocus;
  final FocusNode? nextFocusNode;
  final Color color;
  final Color borderColor;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 38,
        child: TextField(
          controller: myController,
          style: TextStyle(color: Colors.white),
          focusNode: textFieldFocus,
          cursorColor: Colors.white,
          cursorHeight: 24,
          onEditingComplete: () {
            // If nextFocusNode is not null, move focus to the next field
            if (nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            }
          },
          decoration: InputDecoration(
            fillColor: color,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff37A22E)),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            contentPadding: EdgeInsets.only(left: 20, top: 10, right: 20),
          ),
        ),
      ),
    );
  }
}
