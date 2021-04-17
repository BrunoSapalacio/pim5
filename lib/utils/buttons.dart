import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  final Color backgroundColor;
  final String buttonText;
  final VoidCallback function;
  final double height;

  CustomButtom({
    Key key,
    this.backgroundColor,
    this.buttonText,
    this.function,
    this.height = 50.0,
  }) : super(key: key);

  @override
  _CustomButtomState createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.function,
      child: Container(
        width: 150.0,
        height: widget.height,
        alignment: Alignment.center,
        child: Text(widget.buttonText),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: widget.backgroundColor,
        alignment: Alignment.center,
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
