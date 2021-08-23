// To parse this JSON data, do
//
//     final inicioModel = inicioModelFromJson(jsonString);

import 'dart:convert';

InicioModel inicioModelFromJson(String str) =>
    InicioModel.fromJson(json.decode(str));

String inicioModelToJson(InicioModel data) => json.encode(data.toJson());

class InicioModel {
  InicioModel({
    this.indiceAcademico,
    this.balancePendiente,
    this.cantidadDeMaterias,
    this.temperaturaActual,
  });

  double? indiceAcademico;
  double? balancePendiente;
  int? cantidadDeMaterias;
  int? temperaturaActual;

  factory InicioModel.fromJson(Map<String, dynamic> json) => InicioModel(
        indiceAcademico: json["indice_academico"].toDouble(),
        balancePendiente: json["balance_pendiente"].toDouble(),
        cantidadDeMaterias: json["cantidad_de_materias"],
        temperaturaActual: json["temperatura_actual"],
      );

  Map<String, dynamic> toJson() => {
        "indice_academico": indiceAcademico,
        "balance_pendiente": balancePendiente,
        "cantidad_de_materias": cantidadDeMaterias,
        "temperatura_actual": temperaturaActual,
      };
}
