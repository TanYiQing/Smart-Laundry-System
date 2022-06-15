//
// To parse this JSON data, do
//     final address = addressFromJson(jsonString);

import 'dart:convert';

List<Address> addressFromJson(String str) =>
    List<Address>.from(json.decode(str).map((x) => Address.fromJson(x)));

String addressToJson(List<Address> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Address {
  Address({
    this.addressID,
    this.name,
    this.contact,
    this.address1,
    this.address2,
    this.zip,
    this.city,
    this.state,
    this.addressType,
    this.email,
  });

  String? addressID;
  String? name;
  String? contact;
  String? address1;
  String? address2;
  String? zip;
  String? city;
  String? state;
  String? addressType;
  String? email;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressID: json["addressID"],
        name: json["name"],
        contact: json["contact"],
        address1: json["address1"],
        address2: json["address2"],
        zip: json["zip"],
        city: json["city"],
        state: json["state"],
        addressType: json["addressType"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "addressID": addressID,
        "name": name,
        "contact": contact,
        "address1": address1,
        "address2": address2,
        "zip": zip,
        "city": city,
        "state": state,
        "addressType": addressType,
        "email": email,
      };
}
