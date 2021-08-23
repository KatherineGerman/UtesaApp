import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class ClasesPage extends StatefulWidget {
  @override
  _ClasesPageState createState() => _ClasesPageState();
}

class _ClasesPageState extends State<ClasesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clases virtuales"),
      ),
      drawer: MainDrawer(),
    );
  }
}
