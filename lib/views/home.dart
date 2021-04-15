import 'package:flutter/material.dart';
import 'package:pim5/views/tabs/cameras.dart';
import 'package:pim5/views/tabs/computadores.dart';
import 'package:pim5/views/tabs/fones.dart';
import 'package:pim5/views/tabs/som.dart';
import 'package:pim5/views/tabs/todos.dart';
import 'package:pim5/views/tabs/tv.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
              'CATEGORIA',
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            indicatorColor: Color(0XFFdf5252),
            tabs: [
              Tab(
                text: 'Todos',
              ),
              Tab(
                text: 'Computadores',
              ),
              Tab(
                text: 'Som',
              ),
              Tab(
                text: 'Fone de ouvido',
              ),
              Tab(
                text: 'Cameras',
              ),
              Tab(
                text: 'TV',
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: [
            TodosView(),
            ComputadoresView(),
            SomView(),
            FonesView(),
            CamerasView(),
            TvView(),
          ],
        ),
      ),
    );
  }
}
