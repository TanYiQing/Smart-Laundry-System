import 'dart:convert';

List<Machine> machineFromJson(String str) =>
    List<Machine>.from(json.decode(str).map((x) => Machine.fromJson(x)));

String machineToJson(List<Machine> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Machine {
  String? machineID,
      machineType,
      calculationBase,
      minimumWeight,
      maximumWeight,
      price,
      laundryID,
      available;
  Machine({
    this.machineID,
    this.machineType,
    this.calculationBase,
    this.minimumWeight,
    this.maximumWeight,
    this.price,
    this.laundryID,
    this.available,
  });

  factory Machine.fromJson(Map<String, dynamic> json) => Machine(
        machineID: json["machineID"],
        machineType: json["machineType"],
        calculationBase: json["calculationBase"],
        minimumWeight: json["minimumWeight"],
        maximumWeight: json["maximumWeight"],
        price: json["price"],
        laundryID: json["laundryID"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "machineID": machineID,
        "machineType": machineType,
        "calculationBase": calculationBase,
        "minimumWeight": minimumWeight,
        "maximumWeight": maximumWeight,
        "price": price,
        "laundryID": laundryID,
        "available": available,
      };
}
