import 'dart:convert';

List<Wallet> walletFromJson(String str) =>
    List<Wallet>.from(json.decode(str).map((x) => Wallet.fromJson(x)));

String walletToJson(List<Wallet> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Wallet {
  Wallet({
    this.orderId,
    this.receiptId,
    this.email,
    this.name,
    this.phone,
    this.ordermethod,
    this.addressId,
    this.collecttime,
    this.notetolaundry,
    this.machineId,
    this.machineType,
    this.price,
    this.addon1,
    this.addon2,
    this.addon3,
    this.totalPrice,
    this.status,
    this.laundryId,
    this.laundryName,
  });

  String? orderId;
  String? receiptId;
  String? email;
  String? name;
  String? phone;
  String? ordermethod;
  String? addressId;
  String? collecttime;
  String? notetolaundry;
  String? machineId;
  String? machineType;
  String? price;
  String? addon1;
  String? addon2;
  String? addon3;
  String? totalPrice;
  String? status;
  String? laundryId;
  String? laundryName;

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        orderId: json["orderID"],
        receiptId: json["receiptID"],
        email: json["email"],
        name: json["name"],
        phone: json["phone"],
        ordermethod: json["ordermethod"],
        addressId: json["addressID"],
        collecttime: json["collecttime"],
        notetolaundry: json["notetolaundry"],
        machineId: json["machineID"],
        machineType: json["machineType"],
        price: json["price"],
        addon1: json["addon1"],
        addon2: json["addon2"],
        addon3: json["addon3"],
        totalPrice: json["totalPrice"],
        status: json["status"],
        laundryId: json["laundryID"],
        laundryName: json["laundryName"],
      );

  Map<String, dynamic> toJson() => {
        "orderID": orderId,
        "receiptID": receiptId,
        "email": email,
        "name": name,
        "phone": phone,
        "ordermethod": ordermethod,
        "addressID": addressId,
        "collecttime": collecttime,
        "notetolaundry": notetolaundry,
        "machineID": machineId,
        "machineType": machineType,
        "price": price,
        "addon1": addon1,
        "addon2": addon2,
        "addon3": addon3,
        "totalPrice": totalPrice,
        "status": status,
        "laundryID": laundryId,
        "laundryName": laundryName,
      };
}
