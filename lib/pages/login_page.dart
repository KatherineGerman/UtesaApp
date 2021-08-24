import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:utesa_final_app/Services/fetch_recinto_services.dart';
import 'package:utesa_final_app/models/recintos_model.dart';
import 'package:utesa_final_app/pages/home_page.dart';
import 'package:utesa_final_app/utils/color.dart';
import 'package:utesa_final_app/widgets/btn_widget.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = 'Seleccione tu Recinto';
  List recintodata = [];

  String url =
      'https://apps.ia3x.com/ute_app_utesa/index.php?/App/recintos'; //its null for me you can copy an id from api and place here it will be seen....
  Future<String> getRecinto() async {
    //default id for the dropdown

    var res = await http.get(Uri.parse(Uri.encodeFull(
        url))); //if you have any auth key place here...properly..
    var resBody = json.decode(res.body);

    setState(() {
      recintodata = resBody;
    });

    return "Sucess";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getRecinto();
  }

  //Post

/*   final url = 'https://apps.ia3x.com/ute_app_utesa/index.php?/App/login?';
  void postData() async {
    try {
      final response = await http.post(Uri.parse(url), body: {
        "recinto": "UTSDG",
        "usuario": "111",
        "clave": "111",
        "app_id": "20186842",
      });
      print(response.body);
    } catch (er) {}
  } */

  // Get

  /* 
  String url = 'https://apps.ia3x.com/ute_app_utesa/index.php?/App/recintos';
  Future<String?> _getrecinto() async {
    var response = await http.get(Uri.parse(url));
    print(response.body);
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [greenColor, lightGreenColor],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100))),
              child: Center(
                child: Image.asset(
                  "assets/utes.png",
                  width: 100,
                ),
              ),
              padding: EdgeInsets.all(16.0),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: <Widget>[
                  _btnDown(context),
                  _textInput(hint: "usuario"),
                  _textInput(hint: "clave"),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Expanded(
                      child: Center(
                    child: ButtonWidget(
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        btnText: "INGRESAR"),
                  ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _btnDown(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
          ),
          child: DropdownButton(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 20,
            isExpanded: true,
            underline: SizedBox(),
            elevation: 16,
            style: TextStyle(
              color: Colors.black,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: recintodata.map((item) {
              return DropdownMenuItem(
                  child: new Text(
                    item['cod'],
                  ),
                  value: item['txt'].toString());
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _textInput({controller, hint}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white,
        ),
        // padding: EdgeInsets.only(left: 0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            hintText: hint,
          ),
        ),
      ),
    );
  }
}
