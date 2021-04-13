import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/buttons.dart';
import '../utils/custom_text_field.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _keepLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150.0,
            right: 15.0,
            left: 15.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Aluga ",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ScriptMT",
                        color: Color(0XFF707070),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        padding: EdgeInsets.all(0),
                        height: 50,
                        width: 83,
                        alignment: Alignment.center,
                        color: Color(0XFFdf5252),
                        child: Text(
                          "Fácil",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: "ScriptMT",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("A sua solução para aluguéis de equipamentos"),
              SizedBox(
                height: 35.0,
              ),
              CustomTextFormField(
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: 'Senha',
                obscureText: true,
              ),
              Row(
                children: [
                  CircularCheckBox(
                    value: _keepLoggedIn,
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    onChanged: (bool newValue) {
                      setState(() {
                        _keepLoggedIn = newValue;
                      });
                    },
                  ),
                  Text('Manter conectado'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtom(
                buttonText: 'Entrar',
                backgroundColor: Color(0XFFdf5252),
                function: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomButtom(
                buttonText: 'Cadastrar',
                backgroundColor: Color(0XFF22a1e3),
                function: () {
                  Navigator.pushNamed(context, '/recover_pass');
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Esqueceu a senha?\n',
                    ),
                    TextSpan(
                      text: 'Clique aqui',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/recover_pass');
                        },
                    ),
                    TextSpan(
                      text: ' para recuperar',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
