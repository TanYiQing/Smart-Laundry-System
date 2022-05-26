// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

import 'dart:convert';

List<UserProfile> userProfileFromJson(String str) => List<UserProfile>.from(
    json.decode(str).map((x) => UserProfile.fromJson(x)));

String userProfileToJson(List<UserProfile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserProfile {
  UserProfile({
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthday,
    this.phone,
  });

  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  String? birthday;
  String? phone;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        gender: json["gender"],
        birthday: json["birthday"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "gender": gender,
        "birthday": birthday,
        "phone": phone,
      };
}
