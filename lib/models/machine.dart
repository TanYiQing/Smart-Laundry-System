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
      duration,
      laundryID,
      available,
      addOn1,
      addOn1Price,
      addOn2,
      addOn2Price,
      addOn3,
      addOn3Price;
  Machine(
      {this.machineID,
      this.machineType,
      this.calculationBase,
      this.minimumWeight,
      this.maximumWeight,
      this.price,
      this.duration,
      this.laundryID,
      this.available,
      this.addOn1,
      this.addOn1Price,
      this.addOn2,
      this.addOn2Price,
      this.addOn3,
      this.addOn3Price});

  factory Machine.fromJson(Map<String, dynamic> json) => Machine(
      machineID: json["machineID"],
      machineType: json["machineType"],
      calculationBase: json["calculationBase"],
      minimumWeight: json["minimumWeight"],
      maximumWeight: json["maximumWeight"],
      price: json["price"],
      duration:json["duration"],
      laundryID: json["laundryID"],
      available: json["available"],
      addOn1: json["addOn1"],
      addOn1Price: json["addOn1Price"],
      addOn2: json["addOn2"],
      addOn2Price: json["addOn2Price"],
      addOn3: json["addOn3"],
      addOn3Price: json["addOn3Price"]);

  Map<String, dynamic> toJson() => {
        "machineID": machineID,
        "machineType": machineType,
        "calculationBase": calculationBase,
        "minimumWeight": minimumWeight,
        "maximumWeight": maximumWeight,
        "price": price,
        "duration":duration,
        "laundryID": laundryID,
        "available": available,
        "addOn1": addOn1,
        "addOn1Price": addOn1Price,
        "addOn2": addOn2,
        "addOn2Price": addOn2Price,
        "addOn3": addOn3,
        "addOn3Pricce": addOn3Price
      };
}
