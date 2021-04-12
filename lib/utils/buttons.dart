import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final Color backgroundColor;
  final String buttonText;

  CustomButtom({
    Key key,
    this.backgroundColor,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 150.0,
        height: 50,
        alignment: Alignment.center,
        child: Text(buttonText),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: backgroundColor,
        textStyle: TextStyle(
          fontSize: 25.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
