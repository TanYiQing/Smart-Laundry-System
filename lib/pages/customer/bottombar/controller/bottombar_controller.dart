import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var user = Get.arguments;
  var tabIndex = 0;
  late PageController pagecontroller = new PageController();

  void changeTab(int index) {
    tabIndex = index;
    update();
  }
}
