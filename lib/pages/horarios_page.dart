import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class HorariosPage extends StatefulWidget {
  @override
  _HorariosPageState createState() => _HorariosPageState();
}

class _HorariosPageState extends State<HorariosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horarios"),
      ),
      drawer: MainDrawer(),
    );
  }
}
