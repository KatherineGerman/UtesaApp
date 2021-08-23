// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.id,
    this.usuario,
    this.recinto,
    this.nombre,
    this.apellido,
    this.carrera,
    this.correo,
    this.token,
  });

  String? id;
  String? usuario;
  String? recinto;
  String? nombre;
  String? apellido;
  String? carrera;
  String? correo;
  String? token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        usuario: json["usuario"],
        recinto: json["recinto"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        carrera: json["carrera"],
        correo: json["correo"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "usuario": usuario,
        "recinto": recinto,
        "nombre": nombre,
        "apellido": apellido,
        "carrera": carrera,
        "correo": correo,
        "token": token,
      };
}
