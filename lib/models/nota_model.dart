// To parse this JSON data, do
//
//     final calendarioModel = calendarioModelFromJson(jsonString);

import 'dart:convert';

List<CalendarioModel> calendarioModelFromJson(String str) =>
    List<CalendarioModel>.from(
        json.decode(str).map((x) => CalendarioModel.fromJson(x)));

String calendarioModelToJson(List<CalendarioModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CalendarioModel {
  CalendarioModel({
    this.fecha,
    this.nombre,
  });

  DateTime? fecha;
  String? nombre;

  factory CalendarioModel.fromJson(Map<String, dynamic> json) =>
      CalendarioModel(
        fecha: DateTime.parse(json["fecha"]),
        nombre: json["nombre"],
      );

  Map<String, dynamic> toJson() => {
        "fecha":
            "${fecha!.year.toString().padLeft(4, '0')}-${fecha!.month.toString().padLeft(2, '0')}-${fecha!.day.toString().padLeft(2, '0')}",
        "nombre": nombre,
      };
}
