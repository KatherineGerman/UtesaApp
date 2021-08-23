import 'dart:async';

import 'package:flutter/material.dart';
import 'package:utesa_final_app/pages/login_page.dart';
import 'package:utesa_final_app/utils/color.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    {
      Timer(const Duration(milliseconds: 4000), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [greenColor, lightGreenColor],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
        ),
        child: Center(
          child: Image.asset(
            "assets/utes.png",
            width: 100,
          ),
        ),
      ),
    );
  }
}
