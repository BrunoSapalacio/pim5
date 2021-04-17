import 'package:flutter/material.dart';
import 'package:pim5/utils/buttons.dart';

class PagamentoView extends StatefulWidget {
  @override
  _PagamentoViewState createState() => _PagamentoViewState();
}

class _PagamentoViewState extends State<PagamentoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Color(0XFFdf5252),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: Center(
          child: Text(
            'PAGAMENTO',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dados',
                style: TextStyle(
                  color: Color(0XFFdf5252),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Bruno Sapalacio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                  ),
                  Text(
                    'CPF 4xx.xxx.xxx-xx',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                  ),
                  Text(
                    '(15) 99999-9999',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail_outline,
                  ),
                  Text(
                    'aluno2021unip@mail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                  ),
                  Text(
                    'Avenida João Pilon, 120\nCentro, Cerquilho/SP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              Text(
                'Método de Pagamento',
                style: TextStyle(
                  color: Color(0XFFdf5252),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Cartão de crédito',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.credit_card_rounded),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Visa final 4587',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF707070),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomButtom(
                buttonText: 'Confirmar',
                backgroundColor: Color(0XFFdf5252),
                function: () {
                  Navigator.pushNamed(context, '/confirma');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
