import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class QuejasPage extends StatefulWidget {
  @override
  _QuejasPageState createState() => _QuejasPageState();
}

class _QuejasPageState extends State<QuejasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quejas o Sugerencias"),
      ),
      drawer: MainDrawer(),
    );
  }
}
