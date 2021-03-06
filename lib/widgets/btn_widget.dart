import 'package:flutter/material.dart';
import 'package:utesa_final_app/utils/color.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  var btnText = "";
  var onClick;

  ButtonWidget({required this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [greenColor, lightGreenColor],
              end: Alignment.centerLeft,
              begin: Alignment.centerRight),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
