import 'package:final_year_project/models/customerReport.dart';
import 'package:final_year_project/models/errorMachine.dart';
import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportController extends GetxController {
  var laundry = Get.arguments;
  var generateReportType = "".obs;
  var show1 = false.obs;
  var show2 = false.obs;
  var show3 = false.obs;
  var incomeReportList = <Order>[].obs;
  var errorReportList = <ErrorMachine>[].obs;
  var customerReportList = <CustomerReport>[].obs;
  TextEditingController startincomedate = new TextEditingController();
  TextEditingController endincomedate = new TextEditingController();
  TextEditingController starterrordate = new TextEditingController();
  TextEditingController enderrordate = new TextEditingController();
  TextEditingController startcustomerdate = new TextEditingController();
  TextEditingController endcustomerdate = new TextEditingController();

  @override
  void onInit() {
    show1.value = false;
    show2.value = false;
    show3.value = false;
    super.onInit();
  }

  void generateReport(String reportType) {
    if (reportType == "income") {
      generateReportType.value = "Income Report";
      generateIncomeReport();
    } else if (reportType == "error") {
      generateReportType.value = "Error Machine Report";
      generateErrorReport();
    } else {
      generateReportType.value = "Customer Report";
      generateCustomerReport();
    }
    update();
    Get.toNamed('/report');
  }

  void tapCategory(int index) {
    if (index == 1) {
      show1.value = true;
      show2.value = false;
      show3.value = false;
    } else if (index == 2) {
      show1.value = false;
      show2.value = true;
      show3.value = false;
    } else {
      show1.value = false;
      show2.value = false;
      show3.value = true;
    }
    update();
  }

  Future<void> generateIncomeReport() async {
    var incomeReport = await RemoteServices.generateIncomeReport(
        startincomedate.text.toString(),
        endincomedate.text.toString(),
        laundry.laundryID);
    if (incomeReport != null) {
      incomeReportList.assignAll(incomeReport);
      print("Here");
      print(incomeReportList);
    }
    update();
  }

  Future<void> generateErrorReport() async {
    var errorReport = await RemoteServices.generateErrorReport(
        starterrordate.text.toString(),
        enderrordate.text.toString(),
        laundry.laundryID);
    if (errorReport != null) {
      errorReportList.assignAll(errorReport);
      print("Here");
      print(errorReportList);
    }
    update();
  }

  Future<void> generateCustomerReport() async {
    var customerReport = await RemoteServices.generateCustomerReport(
        startcustomerdate.text.toString(),
        endcustomerdate.text.toString(),
        laundry.laundryID);
    if (customerReport != null) {
      customerReportList.assignAll(customerReport);
      print("Here");
      print(customerReportList);
    }
    update();
  }
}
