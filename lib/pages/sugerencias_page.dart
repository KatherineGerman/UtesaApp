import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class SugerenciasPage extends StatefulWidget {
  @override
  _SugerenciasPageState createState() => _SugerenciasPageState();
}

class _SugerenciasPageState extends State<SugerenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sugerencias"),
      ),
      drawer: MainDrawer(),
    );
  }
}
