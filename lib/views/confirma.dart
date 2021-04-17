import 'package:flutter/material.dart';

class ConfirmaView extends StatefulWidget {
  @override
  _ConfirmaViewState createState() => _ConfirmaViewState();
}

class _ConfirmaViewState extends State<ConfirmaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0XFFdf5252),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.done_all_outlined,
              size: 100.0,
              color: Colors.white,
            ),
            Text(
              'Reserva realizada\ncom sucesso!',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
