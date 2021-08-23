// To parse this JSON data, do
//
//     final horarioModel = horarioModelFromJson(jsonString);

import 'dart:convert';

List<HorarioModel> horarioModelFromJson(String str) => List<HorarioModel>.from(
    json.decode(str).map((x) => HorarioModel.fromJson(x)));

String horarioModelToJson(List<HorarioModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HorarioModel {
  HorarioModel({
    this.usuario,
    this.codigo,
    this.nombre,
    this.horario,
    this.aula,
    this.profesor,
    this.creditos,
    this.nota,
  });

  String? usuario;
  String? codigo;
  String? nombre;
  String? horario;
  String? aula;
  String? profesor;
  String? creditos;
  String? nota;

  factory HorarioModel.fromJson(Map<String, dynamic> json) => HorarioModel(
        usuario: json["usuario"],
        codigo: json["codigo"],
        nombre: json["nombre"],
        horario: json["horario"],
        aula: json["aula"],
        profesor: json["profesor"],
        creditos: json["creditos"],
        nota: json["nota"],
      );

  Map<String, dynamic> toJson() => {
        "usuario": usuario,
        "codigo": codigo,
        "nombre": nombre,
        "horario": horario,
        "aula": aula,
        "profesor": profesor,
        "creditos": creditos,
        "nota": nota,
      };
}
