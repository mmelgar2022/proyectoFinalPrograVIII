import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

class CompanyResponse {
  CompanyResponse(
      {required this.logo,
      required this.headquarters,
      required this.homepage,
      required this.id,
      required this.name,
      required this.country});

  String logo;
  String headquarters;
  String homepage;
  int id;
  String name;
  String country;

  factory CompanyResponse.fromJson(String str) =>
      CompanyResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyResponse.fromMap(Map<String, dynamic> json) => CompanyResponse(
      logo: json["logo"],
      headquarters: json["headquarters"],
      homepage: json["homepage"],
      id: json["id"] ?? 0,
      name: json["name"],
      country: json["country"]);

  Map<String, dynamic> toMap() => {
        "logo": logo,
        "headquarters": headquarters,
        "homepage": homepage,
        "id": id,
        "name": name,
        "country": country
      };
}
