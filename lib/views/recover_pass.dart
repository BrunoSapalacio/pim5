import 'package:flutter/material.dart';

import '../utils/buttons.dart';
import '../utils/custom_text_field.dart';

class RecoverPass extends StatefulWidget {
  @override
  _RecoverPassState createState() => _RecoverPassState();
}

class _RecoverPassState extends State<RecoverPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100.0,
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
                hintText: 'Nome Completo',
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: 'CPF',
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: 'Senha',
                obscureText: true,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: 'Senha',
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtom(
                buttonText: 'Cadastrar',
                backgroundColor: Color(0XFFdf5252),
                function: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
