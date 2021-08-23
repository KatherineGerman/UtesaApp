// To parse this JSON data, do
//
//     final clasesModel = clasesModelFromJson(jsonString);

import 'dart:convert';

List<ClasesModel> clasesModelFromJson(String str) => List<ClasesModel>.from(
    json.decode(str).map((x) => ClasesModel.fromJson(x)));

String clasesModelToJson(List<ClasesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClasesModel {
  ClasesModel({
    this.codigo,
    this.foto,
    this.nombre,
    this.link,
  });

  String? codigo;
  String? foto;
  String? nombre;
  String? link;

  factory ClasesModel.fromJson(Map<String, dynamic> json) => ClasesModel(
        codigo: json["codigo"],
        foto: json["foto"],
        nombre: json["nombre"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "foto": foto,
        "nombre": nombre,
        "link": link,
      };
}
