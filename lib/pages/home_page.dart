import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/main_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //actions: [],
        title: Container(
          width: 60,
          child: Image.asset(
            "assets/utes.png",
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Color(0xFF33691E),
        //title: Text("Inicio"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: GridView.count(
          padding: EdgeInsets.all(30.0),
          crossAxisCount: 2,
          children: <Widget>[
            Center(
              child: Text(
                'BIENVENID@S ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.network(
                        'assets/books.svg',
                        width: 40,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.network(
                        'assets/dollar-currency-symbol.svg',
                        width: 40,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.network(
                        'assets/blank-page.svg',
                        width: 40,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.network(
                        'assets/cloudy.svg',
                        width: 40,
                      ),
                      Text("Home")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /* Widget buildCard() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
        child: Column(
          children: [
            Text(
              'BIENVENID@S ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ); */
}

/*class BuildCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
        color: Colors.lightGreen,
        child: Container(
          height: 100,
        ),
      ),
    ));
  }
}*/
