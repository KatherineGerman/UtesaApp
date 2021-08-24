// To parse this JSON data, do
//
//     final recintosModel = recintosModelFromJson(jsonString);

import 'dart:convert';

List<RecintosModel> recintosModelFromJson(String str) => List<RecintosModel>.from(json.decode(str).map((x) => RecintosModel.fromJson(x)));

String recintosModelToJson(List<RecintosModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RecintosModel {
    RecintosModel({
        this.cod,
        this.txt,
    });

    String? cod;
    String? txt;

    factory RecintosModel.fromJson(Map<String, dynamic> json) => RecintosModel(
        cod: json["cod"],
        txt: json["txt"],
    );

    Map<String, dynamic> toJson() => {
        "cod": cod,
        "txt": txt,
    };
}
