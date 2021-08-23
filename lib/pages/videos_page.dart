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
      body: Center(
        child: ListView(
          children: [
            videos("Video1"),
            videos("Video2"),
            videos("Video3"),
          ],
        ),
      ),
    );
  }
}

Widget videos(String message) {
  return Card(
    child: SizedBox(
      height: 200,
      child: Center(child: Text(message)),
    ),
  );
}
