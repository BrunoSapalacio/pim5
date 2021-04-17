import 'package:flutter/material.dart';
import 'package:pim5/utils/buttons.dart';

class ReservasView extends StatefulWidget {
  @override
  _ReservasViewState createState() => _ReservasViewState();
}

class _ReservasViewState extends State<ReservasView> {
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
            'RESERVAS',
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
                'Preço total: R\$ 100,00 por 2 dias',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF707070),
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 300.0,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Câmera',
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
                'Preço total: R\$ 80,00 por 2 dias',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF707070),
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 300.0,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                'TV',
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
                'Preço total: R\$ 120,00 por 2 dias',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF707070),
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 300.0,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total: ',
                    style: TextStyle(
                      color: Color(0XFFdf5252),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'R\$ 300,00',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomButtom(
                buttonText: 'Pagar',
                backgroundColor: Color(0XFFdf5252),
                function: () {
                  Navigator.pushNamed(context, '/pagamento');
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomButtom(
                buttonText: 'Continuar\nreservando',
                backgroundColor: Color(0XFFdf5252),
                height: 70.0,
                function: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
