import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServicesDetailsController extends GetxController {
  var laundry = Get.arguments;
  late ScrollController scrollcontroller;
  double scrollcontrolleroffset = 0.0;

  @override
  void onInit() {
    scrollcontroller=ScrollController();
    scrollcontroller.addListener(scrollListener);
    super.onInit();
  }
  scrollListener(){
    scrollcontrolleroffset=scrollcontroller.offset;
    update();
  }
}
