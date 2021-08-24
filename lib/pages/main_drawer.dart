import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/calendar_page.dart';
import 'package:utesa_final_app/pages/calificaciones_page.dart';
import 'package:utesa_final_app/pages/clases_page.dart';
import 'package:utesa_final_app/pages/home_page.dart';
import 'package:utesa_final_app/pages/horarios_page.dart';
import 'package:utesa_final_app/pages/login_page.dart';
import 'package:utesa_final_app/pages/misquejas_page.dart';
import 'package:utesa_final_app/pages/noticias_page.dart';
import 'package:utesa_final_app/pages/pensum_page.dart';
import 'package:utesa_final_app/pages/quejas_page.dart';
import 'package:utesa_final_app/pages/sugerencias_page.dart';
import 'package:utesa_final_app/pages/tareas_pages.dart';
import 'package:utesa_final_app/pages/videos_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              Text(
                'Katherine German',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Text(
                'Recinto',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Inicio',
          style: TextStyle(
              //fontSize: 18,
              ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
      ListTile(
          leading: Icon(Icons.book_outlined),
          title: Text(
            'Pensum',
            style: TextStyle(
                //fontSize: 18,
                ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PensumPage()));
          }),
      ListTile(
        leading: Icon(Icons.access_time),
        title: Text('Horarios'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HorariosPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.assignment_outlined),
        title: Text('Asignaturas Pendientes'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TareasPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text('Clases virtuales'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ClasesPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.app_registration),
        title: Text('Calificaciones'),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CalificacionesPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.event_available),
        title: Text('Calendario de Eventos'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CalendarPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.article_outlined),
        title: Text('Noticias'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NoticiasPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.video_collection_outlined),
        title: Text('Videos'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => VideosPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.add_comment_outlined),
        title: Text('Quejas '),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuejasPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.comment_outlined),
        title: Text('Mis Quejas '),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MisQuejasPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.add_comment_outlined),
        title: Text('Sugerencias '),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SugerenciasPage()));
        },
      ),
      Divider(
        height: 1,
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Salir'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
      ),
    ]));
  }
}
