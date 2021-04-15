import 'package:flutter/material.dart';
import 'package:pim5/views/home.dart';
import 'views/cadastro.dart';
import 'views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aluga Fácil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/recover_pass': (context) => RecoverPass(),
        '/home': (context) => Home(),
      },
    );
  }
}
