// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

List<Order> orderFromJson(String str) =>
    List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String orderToJson(List<Order> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
  Order({
    this.orderId,
    this.receiptId,
    this.email,
    this.name,
    this.phone,
    this.ordermethod,
    this.addressId,
    this.collecttime,
    this.notetolaundry,
    this.laundryId,
    this.machineId,
    this.machineType,
    this.price,
    this.addon1,
    this.addon2,
    this.addon3,
    this.totalPrice,
    this.status,
    this.orderCreated,
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
  String? laundryId;
  String? machineId;
  String? machineType;
  String? price;
  String? addon1;
  String? addon2;
  String? addon3;
  String? totalPrice;
  String? status;
  String? orderCreated;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderId: json["orderID"],
        receiptId: json["receiptID"],
        email: json["email"],
        name: json["name"],
        phone: json["phone"],
        ordermethod: json["ordermethod"],
        addressId: json["addressID"],
        collecttime: json["collecttime"],
        notetolaundry: json["notetolaundry"],
        laundryId: json["laundryID"],
        machineId: json["machineID"],
        machineType: json["machineType"],
        price: json["price"],
        addon1: json["addon1"],
        addon2: json["addon2"],
        addon3: json["addon3"],
        totalPrice: json["totalPrice"],
        status: json["status"],
        orderCreated: json["orderCreated"],
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
        "laundryID": laundryId,
        "machineID": machineId,
        "machineType": machineType,
        "price": price,
        "addon1": addon1,
        "addon2": addon2,
        "addon3": addon3,
        "totalPrice": totalPrice,
        "status": status,
        "orderCreated": orderCreated,
      };
}
