// To parse this JSON data, do
//
//     final misquejasModel = misquejasModelFromJson(jsonString);

import 'dart:convert';

List<MisquejasModel> misquejasModelFromJson(String str) =>
    List<MisquejasModel>.from(
        json.decode(str).map((x) => MisquejasModel.fromJson(x)));

String misquejasModelToJson(List<MisquejasModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MisquejasModel {
  MisquejasModel({
    this.id,
    this.fecha,
    this.usuario,
    this.queja,
    this.estado,
  });

  String? id;
  DateTime? fecha;
  String? usuario;
  String? queja;
  String? estado;

  factory MisquejasModel.fromJson(Map<String, dynamic> json) => MisquejasModel(
        id: json["id"],
        fecha: DateTime.parse(json["fecha"]),
        usuario: json["usuario"],
        queja: json["queja"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha": fecha!.toIso8601String(),
        "usuario": usuario,
        "queja": queja,
        "estado": estado,
      };
}
