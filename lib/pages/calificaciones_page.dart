import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class CalificacionesPage extends StatefulWidget {
  @override
  _CalificacionesPageState createState() => _CalificacionesPageState();
}

class _CalificacionesPageState extends State<CalificacionesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calificaciones"),
      ),
      drawer: MainDrawer(),
    );
  }
}
