import 'package:flutter/material.dart';

class RecoverPass extends StatefulWidget {
  @override
  _RecoverPassState createState() => _RecoverPassState();
}

class _RecoverPassState extends State<RecoverPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar senha'),
      ),
    );
  }
}
