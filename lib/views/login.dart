import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

import '../utils/buttons.dart';

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
                        color: Color(0XFF707070),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 50,
                        width: 70,
                        alignment: Alignment.center,
                        color: Color(0XFFdf5252),
                        child: Text(
                          "fácil",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
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
              CustomButtom(
                buttonText: 'Entrar',
                backgroundColor: Color(0XFFdf5252),
              ),
              SizedBox(
                height: 10.0,
              ),
              CustomButtom(
                buttonText: 'Cadastrar',
                backgroundColor: Color(0XFF22a1e3),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Esqueceu a senha?\nClique aqui para recuperar"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final obscureText;
  const CustomTextFormField({
    Key key,
    this.hintText,
    this.obscureText,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
