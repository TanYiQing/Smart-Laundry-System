import 'dart:convert';

List<Availability> availabilityFromJson(String str) => List<Availability>.from(
    json.decode(str).map((x) => Availability.fromJson(x)));

String availabilityToJson(List<Availability> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Availability {
  Availability({
    this.machineType,
    this.percentage,
  });

  String? machineType;
  String? percentage;

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        machineType: json["machineType"],
        percentage: (json["percentage"] == "NAN") ? "0" : json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "machineType": machineType,
        "percentage": percentage,
      };
}
