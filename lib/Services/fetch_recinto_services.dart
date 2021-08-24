import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recintos_model.dart';

class RecintoServices {
  static const String url =
      'https://apps.ia3x.com/ute_app_utesa/index.php?/App/recintos';

  static Future getRecinto() async {
    try {
      final response = await http.get(Uri.parse(
          'https://apps.ia3x.com/ute_app_utesa/index.php?/App/recintos'));
      if (response.statusCode == 200) {
        print(response.body.toString());
        var recint = recintosModelFromJson(response.body);

        return recint;
      } else {
        return <RecintosModel>[];
      }
    } catch (e) {
      return <RecintosModel>[];
    }
  }
}
