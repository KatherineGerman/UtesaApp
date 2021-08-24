import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';
import 'package:utesa_final_app/widgets/btnEnviar.dart';

class SugerenciasPage extends StatefulWidget {
  @override
  _SugerenciasPageState createState() => _SugerenciasPageState();
}

class _SugerenciasPageState extends State<SugerenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Sugerencias"),
      ),
      drawer: MainDrawer(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: Text(
              "Sugerencias",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
              "Tu opinion es importante para nosotros.",
            ),
          ),
          _sugerenciaText(),
          Expanded(
              child: Center(
            child: EnviarWidget(onClick: () {}, btnText: "ENVIAR"),
          ))
        ],
      ),
    );
  }
}

Widget _sugerenciaText() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Sugerencias aqui ",
          border: OutlineInputBorder(),
        ),
        maxLines: 10,
      ),
    ),
  );
}

/*Widget _btnEnviar() {
  return Container(
    child: Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Enviar'),
            onPressed: () {
              print('Sugerencia Enviada');
            },
          )
        ],
      ),
    ),
  );
} */
