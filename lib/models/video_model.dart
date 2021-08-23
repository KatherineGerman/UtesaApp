// To parse this JSON data, do
//
//     final videosModel = videosModelFromJson(jsonString);

import 'dart:convert';

List<VideosModel> videosModelFromJson(String str) => List<VideosModel>.from(
    json.decode(str).map((x) => VideosModel.fromJson(x)));

String videosModelToJson(List<VideosModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideosModel {
  VideosModel({
    this.nombre,
    this.codigo,
    this.imagen,
    this.url,
  });

  String? nombre;
  String? codigo;
  String? imagen;
  String? url;

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
        nombre: json["nombre"],
        codigo: json["codigo"],
        imagen: json["imagen"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "codigo": codigo,
        "imagen": imagen,
        "url": url,
      };
}
