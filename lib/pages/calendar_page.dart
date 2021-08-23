import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'Calendario',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      ),
    ));
  }
}
