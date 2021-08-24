import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33691E),
        title: Text("Calendario de Eventos"),
      ),
      drawer: MainDrawer(),
      body: SfCalendar(
        view: CalendarView.week,
        // initialDisplayDate: DateTime(2021, 08, 23, 22, 04),
        //initialSelectedDate: DateTime(2021, 08, 23, 22, 04),
      ),
    );
  }
}

/*List<Appointment> getAppointments() {
  List<Appointment> meeting = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime starTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);

  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meeting.add(Appointment(
      startTime: starTime,
      endTime: endTime,
      subject: 'Tarea de Informatica',
      color: Colors.blue));
}

class MeetinDataSource extends CalendarDataSource {
  eventDate(List<Appointment> source) {
    appointments = source;
  }
} */
