import 'dart:convert' show json;

class CompanyResponse {
  CompanyResponse({
    required this.headquarters,
    required this.homepage,
    required this.id,
    required this.name,
  });

  String headquarters;
  String homepage;
  int id;
  String name;

  factory CompanyResponse.fromJson(String str) =>
      CompanyResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyResponse.fromMap(Map<String, dynamic> json) => CompanyResponse(
        headquarters: json["headquarters"],
        homepage: json["homepage"],
        id: json["id"] ?? 0,
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "headquarters": headquarters,
        "homepage": homepage,
        "id": id,
        "name": name,
      };
}
