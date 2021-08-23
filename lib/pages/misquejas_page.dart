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
      body: Center(
        child: ListView(
          children: [
            quejas("queja1"),
            quejas("queja2"),
            quejas("queja3"),
          ],
        ),
      ),
    );
  }
}

Widget quejas(String message) {
  return Card(
    child: SizedBox(
      height: 150,
      child: Center(child: Text(message)),
    ),
  );
}
