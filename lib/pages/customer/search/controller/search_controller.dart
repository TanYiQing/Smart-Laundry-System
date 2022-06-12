import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  var serviceList = <Laundry>[].obs;
  TextEditingController searchController = new TextEditingController();

  @override
  void onInit() {
    // searchLaundry();
    super.onInit();
  }

  Future<void> searchLaundry() async {
    String serviceName = searchController.text.toString();
    print(serviceName);
    var service = await RemoteServices.searchLaundry(serviceName);
    if (service != null) {
      serviceList.assignAll(service);
    }

    update();
  }

  void viewServicesDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: serviceList[index].laundryID,
        laundryOwnerName: serviceList[index].laundryOwnerName,
        laundryOwnerContact: serviceList[index].laundryOwnerContact,
        laundryName: serviceList[index].laundryName,
        laundryAddress1: serviceList[index].laundryAddress1,
        laundryAddress2: serviceList[index].laundryAddress2,
        laundryZIP: serviceList[index].laundryZIP,
        laundryCity: serviceList[index].laundryCity,
        laundryState: serviceList[index].laundryState,
        dateLaunch: serviceList[index].dateLaunch,
        email: serviceList[index].email,
        approve: serviceList[index].approve);

    Get.toNamed("/servicesdetails", arguments: laundry);
  }

  void countClick(index, String date) {
    print(date);
    print(serviceList[index].laundryID);
    RemoteServices.countClick(date, serviceList[index].laundryID);
  }
}
