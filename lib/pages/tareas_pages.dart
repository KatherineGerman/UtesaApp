import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class TareasPage extends StatefulWidget {
  @override
  _TareasPageState createState() => _TareasPageState();
}

class _TareasPageState extends State<TareasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Asignaciones Pendientes"),
      ),
      drawer: MainDrawer(),
    );
  }
}
