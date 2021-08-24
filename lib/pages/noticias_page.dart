import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class NoticiasPage extends StatefulWidget {
  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Noticias"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: ListView(
          children: [
            noticias("Noticia1"),
            noticias("Noticia2"),
          ],
        ),
      ),
    );
  }
}

Widget noticias(String message) {
  return Card(
    child: SizedBox(
      height: 400,
      child: Center(child: Text(message)),
    ),
  );
}
