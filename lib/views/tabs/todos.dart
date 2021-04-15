import 'package:flutter/material.dart';

class TodosView extends StatefulWidget {
  @override
  _TodosViewState createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemCategoria(
              label: "Computador",
              icon: Icons.computer,
            ),
            ItemCategoria(
              label: "Caixa de Som",
              icon: Icons.speaker,
            ),
            ItemCategoria(
              label: "Fone de ouvido",
              icon: Icons.headset,
            ),
            ItemCategoria(
              label: "Cameras",
              icon: Icons.camera_alt_sharp,
            ),
            ItemCategoria(label: "TV", icon: Icons.tv_sharp),
          ],
        ),
      ),
    );
  }
}

class ItemCategoria extends StatelessWidget {
  final String label;
  final IconData icon;

  const ItemCategoria({Key key, this.label, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40.0,
          ),
          SizedBox(width: 15.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
