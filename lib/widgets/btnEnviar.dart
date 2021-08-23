import 'package:flutter/material.dart';
import 'package:utesa_final_app/utils/color.dart';

// ignore: must_be_immutable
class EnviarWidget extends StatelessWidget {
  var btnText = "";
  var onClick;

  EnviarWidget({required this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [grey1, grey2],
              end: Alignment.centerLeft,
              begin: Alignment.centerRight),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Text(
          btnText,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
