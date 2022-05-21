import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessReportController extends GetxController {
  var user = Get.arguments;
  var show1 = false.obs;
  var show2 = false.obs;
  var show3 = false.obs;
  var laundryList = <Laundry>[].obs;
  TextEditingController startincomedate = new TextEditingController();
  TextEditingController endincomedate = new TextEditingController();
  TextEditingController starterrordate = new TextEditingController();
  TextEditingController enderrordate = new TextEditingController();
  TextEditingController startcustomerdate = new TextEditingController();
  TextEditingController endcustomerdate = new TextEditingController();

  @override
  void onInit() {
    loadLaundry();
    show1.value = false;
    show2.value = false;
    show3.value = false;
    super.onInit();
  }

  Future<void> loadLaundry() async {
    var laundry = await RemoteServices.loadLaundry(user.email.toString());
    if (laundry != null) {
      laundryList.assignAll(laundry);
      print("Here");
      print(laundryList);
    }
    update();
  }

  String checkLaundryName(String laundryName) {
    if (laundryName.length < 15) {
      return laundryName;
    } else {
      return laundryName.substring(0, 15) + "...";
    }
  }

  void viewLaundryDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: laundryList[index].laundryID,
        laundryOwnerName: laundryList[index].laundryOwnerName,
        laundryOwnerContact: laundryList[index].laundryOwnerContact,
        laundryName: laundryList[index].laundryName,
        laundryAddress1: laundryList[index].laundryAddress1,
        laundryAddress2: laundryList[index].laundryAddress2,
        laundryZIP: laundryList[index].laundryZIP,
        laundryCity: laundryList[index].laundryCity,
        laundryState: laundryList[index].laundryState,
        dateLaunch: laundryList[index].dateLaunch,
        email: laundryList[index].email,
        approve: laundryList[index].approve);

    Get.toNamed("/businessreportcategorylaundry", arguments: laundry);
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

  void generateReport(String reportType) {
    if (reportType == "income") {
      print(reportType);
      print(startincomedate.text.toString());
    } else if (reportType == "error") {
      print(reportType);
    } else {
      print(reportType);
    }
  }
}
