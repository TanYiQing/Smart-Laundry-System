import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class BottomBarController extends GetxController {
  final appData = GetStorage();
  var serviceList = <Laundry>[].obs;
  var favouriteList = [].obs;
  var user = Get.arguments;
  var tabIndex = 0;
  late PageController pagecontroller = new PageController();

  void changeTab(int index) {
    tabIndex = index;
    if (tabIndex == 1) {
      loadFavourite();
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

  Future<void> loadFavourite() async {
    var service = await RemoteServices.loadFavourite(appData.read("email"));
    if (service != null) {
      serviceList.assignAll(service);
      for (int i = 0; i < serviceList.length; i++) {
        if (serviceList[i].favourite == "unfavourite") {
          favouriteList.insert(i, "unfavourite");
        } else {
          favouriteList.insert(i, "favourite");
        }
      }
    }
    print(favouriteList);
    update();
  }

  void handlefavourite(int index, String laundryID) {
    RemoteServices.deleteFavourite(laundryID, appData.read("email"));
    serviceList.removeAt(index);
    update();
  }
}
