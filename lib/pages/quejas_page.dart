import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';
import 'package:utesa_final_app/widgets/btnEnviar.dart';

class QuejasPage extends StatefulWidget {
  @override
  _QuejasPageState createState() => _QuejasPageState();
}

class _QuejasPageState extends State<QuejasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Quejas "),
      ),
      drawer: MainDrawer(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: Text(
              "Quejas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
              "Ayudanos a mejorar, Que tienes para decirnos?",
            ),
          ),
          _quejasText(),
          Expanded(
              child: Center(
            child: EnviarWidget(onClick: () {}, btnText: "ENVIAR"),
          ))
        ],
      ),
    );
  }
}

Widget _quejasText() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Deposite sus quejas aqui ",
          border: OutlineInputBorder(),
        ),
        maxLines: 10,
      ),
    ),
  );
}
