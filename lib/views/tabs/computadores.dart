import 'package:flutter/material.dart';
import 'package:pim5/utils/buttons.dart';

class ComputadoresView extends StatefulWidget {
  @override
  _ComputadoresViewState createState() => _ComputadoresViewState();
}

class _ComputadoresViewState extends State<ComputadoresView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Image(
          image: AssetImage('assets/images/computador.jpg'),
          height: 150.0,
        ),
        Text(
          'Computador Intel i5 1TB',
          style: TextStyle(
            color: Color(0XFFdf5252),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Computador com processador Intel core i5\n' +
              'para gerir os seus processos de forma rápida\ne eficaz.',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'R\$ 50,00 ',
              style: TextStyle(
                color: Color(0XFFdf5252),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'por dia',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        CustomButtom(
          buttonText: 'Reservar',
          backgroundColor: Color(0XFFdf5252),
          function: () {
            Navigator.pushNamed(context, '/reservas');
          },
        ),
      ],
    );
  }
}
