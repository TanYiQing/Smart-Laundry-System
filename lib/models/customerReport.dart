// To parse this JSON data, do
//
//     final customerReport = customerReportFromJson(jsonString);

import 'dart:convert';

List<CustomerReport> customerReportFromJson(String str) =>
    List<CustomerReport>.from(
        json.decode(str).map((x) => CustomerReport.fromJson(x)));

String customerReportToJson(List<CustomerReport> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CustomerReport {
  CustomerReport({
    this.date,
    this.laundryId,
    this.pageViews,
    this.orderNum,
    this.transactionAmount,
  });

  String? date;
  String? laundryId;
  String? pageViews;
  String? orderNum;
  String? transactionAmount;

  factory CustomerReport.fromJson(Map<String, dynamic> json) => CustomerReport(
        date: json["date"],
        laundryId: json["laundryID"],
        pageViews: json["pageViews"],
        orderNum: json["orderNum"],
        transactionAmount: json["transactionAmount"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "laundryID": laundryId,
        "pageViews": pageViews,
        "orderNum": orderNum,
        "transactionAmount": transactionAmount,
      };
}
