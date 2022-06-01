import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorReportController extends GetxController {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController machineIDcontroller = new TextEditingController();
  TextEditingController errorcontroller = new TextEditingController();

  var laundry = Get.arguments;
  late var selectMachineType = "Washing Machine".tr;
  final List<String> machineType = [
    "Washing Machine".tr,
    "Dry Washing Machine".tr,
    "Ironing Machine".tr,
  ];

  void chooseMachineType(value) {
    selectMachineType = value;
    print(selectMachineType);
    update();
  }

  void sendReport() {
    String name, email, phone, laundryID, machineID, machineType, error;
    name = namecontroller.text.toString();
    email = emailcontroller.text.toString();
    phone = phonecontroller.text.toString();
    laundryID = laundry.laundryID.toString();
    machineID = machineIDcontroller.text.toString();
    machineType = selectMachineType.toString();
    error = errorcontroller.text.toString();
    RemoteServices.sendReport(
        name, email, phone, laundryID, machineID, machineType, error);
  }
}
