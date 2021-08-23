// To parse this JSON data, do
//
//     final pesumModel = pesumModelFromJson(jsonString);

import 'dart:convert';

PensumModel pensumModelFromJson(String str) =>
    PensumModel.fromJson(json.decode(str));

String pensumModelToJson(PensumModel data) => json.encode(data.toJson());

class PensumModel {
  PensumModel({
    this.carrera,
    this.materias,
  });

  String? carrera;
  List<Materia>? materias;

  factory PensumModel.fromJson(Map<String, dynamic> json) => PensumModel(
        carrera: json["carrera"],
        materias: List<Materia>.from(
            json["materias"].map((x) => Materia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "carrera": carrera,
        "materias": List<dynamic>.from(materias!.map((x) => x.toJson())),
      };
}

class Materia {
  Materia({
    this.codigo,
    this.nombre,
    this.cuatrimestre,
  });

  String? codigo;
  String? nombre;
  int? cuatrimestre;

  factory Materia.fromJson(Map<String, dynamic> json) => Materia(
        codigo: json["codigo"],
        nombre: json["nombre"],
        cuatrimestre: json["cuatrimestre"],
      );

  Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "nombre": nombre,
        "cuatrimestre": cuatrimestre,
      };
}
