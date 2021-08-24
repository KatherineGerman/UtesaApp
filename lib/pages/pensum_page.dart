import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class PensumPage extends StatefulWidget {
  @override
  _PensumPageState createState() => _PensumPageState();
}

class _PensumPageState extends State<PensumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Pensum"),
      ),
      drawer: MainDrawer(),
    );
  }
}
