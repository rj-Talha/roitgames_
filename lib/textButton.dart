import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  const MyTextButton({super.key, required this.text});
  final String text;
  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  TextDecoration myDecor = TextDecoration.none;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (value) {
        if (value) {
          setState(() {
            myDecor = TextDecoration.underline;
          });
        } else {
          setState(() {
            myDecor = TextDecoration.none;
          });
        }
      },
      onPressed: () {},
      child: Text(
        widget.text,
        style: TextStyle(
          decoration: myDecor,
          decorationColor: Colors.white,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}
