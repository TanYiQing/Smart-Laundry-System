// To parse this JSON data, do
//
//     final errorMachine = errorMachineFromJson(jsonString);

import 'dart:convert';

List<ErrorMachine> errorMachineFromJson(String str) => List<ErrorMachine>.from(
    json.decode(str).map((x) => ErrorMachine.fromJson(x)));

String errorMachineToJson(List<ErrorMachine> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ErrorMachine {
  ErrorMachine(
      {this.errorId,
      this.name,
      this.phone,
      this.email,
      this.laundryId,
      this.machineId,
      this.machineType,
      this.error,
      this.errorCreated});

  String? errorId;
  String? name;
  String? phone;
  String? email;
  String? laundryId;
  String? machineId;
  String? machineType;
  String? error;
  String? errorCreated;

  factory ErrorMachine.fromJson(Map<String, dynamic> json) => ErrorMachine(
        errorId: json["error_ID"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        laundryId: json["laundryID"],
        machineId: json["machineID"],
        machineType: json["machineType"],
        error: json["error"],
        errorCreated: json["errorCreated"],
      );

  Map<String, dynamic> toJson() => {
        "error_ID": errorId,
        "name": name,
        "phone": phone,
        "email": email,
        "laundryID": laundryId,
        "machineID": machineId,
        "machineType": machineType,
        "error": error,
        "errorCreated": errorCreated,
      };
}
