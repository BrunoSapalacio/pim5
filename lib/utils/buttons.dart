import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  final Color backgroundColor;
  final String buttonText;
  final VoidCallback function;

  CustomButtom({
    Key key,
    this.backgroundColor,
    this.buttonText,
    this.function,
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
        height: 50,
        alignment: Alignment.center,
        child: Text(widget.buttonText),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: widget.backgroundColor,
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
