import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
      ),
      drawer: MainDrawer(),
    );
  }
}
