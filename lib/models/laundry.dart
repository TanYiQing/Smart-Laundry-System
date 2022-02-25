import 'dart:convert';

List<Laundry> laundryFromJson(String str) =>
    List<Laundry>.from(json.decode(str).map((x) => Laundry.fromJson(x)));

String laundryToJson(List<Laundry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Laundry {
  String? laundryID,
      laundryOwnerName,
      laundryOwnerContact,
      laundryName,
      laundryAddress1,
      laundryAddress2,
      laundryZIP,
      laundryCity,
      laundryState,
      dateLaunch,
      email,
      approve;
  Laundry(
      {this.laundryID,
      this.laundryOwnerName,
      this.laundryOwnerContact,
      this.laundryName,
      this.laundryAddress1,
      this.laundryAddress2,
      this.laundryZIP,
      this.laundryCity,
      this.laundryState,
      this.dateLaunch,
      this.email,
      this.approve});

  factory Laundry.fromJson(Map<String, dynamic> json) => Laundry(
        laundryID: json["laundryID"],
        laundryOwnerName: json["laundryOwnerName"],
        laundryOwnerContact: json["laundryOwnerContact"],
        laundryName: json["laundryName"],
        laundryAddress1: json["laundryAddress1"],
        laundryAddress2: json["laundryAddress2"],
        laundryZIP: json["laundryZIP"],
        laundryCity: json["laundryCity"],
        laundryState: json["laundryState"],
        dateLaunch: json["dateLaunch"],
        email: json["email"],
        approve: json["approve"],
      );

  Map<String, dynamic> toJson() => {
        "laundryID": laundryID,
        "laundryOwnerName": laundryOwnerName,
        "laundryOwnerContact": laundryOwnerContact,
        "laundryName": laundryName,
        "laundryAddress1": laundryAddress1,
        "laundryAddress2": laundryAddress2,
        "laundryZIP": laundryZIP,
        "laundryCity": laundryCity,
        "laundryState": laundryState,
        "dateLaunch": dateLaunch,
        "email": email,
        "approve": approve
      };
}
