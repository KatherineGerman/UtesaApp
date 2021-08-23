import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class MisQuejasPage extends StatefulWidget {
  @override
  _MisQuejasPageState createState() => _MisQuejasPageState();
}

class _MisQuejasPageState extends State<MisQuejasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis Quejas"),
      ),
      drawer: MainDrawer(),
    );
  }
}
