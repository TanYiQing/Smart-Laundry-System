import 'dart:convert';

List<Favourite> favouriteFromJson(String str) =>
    List<Favourite>.from(json.decode(str).map((x) => Favourite.fromJson(x)));

String favouriteToJson(List<Favourite> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Favourite {
  Favourite({
    this.laundryId,
    this.email,
  });

  String? laundryId;
  String? email;

  factory Favourite.fromJson(Map<String, dynamic> json) => Favourite(
        laundryId: json["laundryID"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "laundryID": laundryId,
        "email": email,
      };
}
