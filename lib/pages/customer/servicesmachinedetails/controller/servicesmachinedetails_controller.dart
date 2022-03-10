import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServicesMachineDetailsController extends GetxController {
  var machine = Get.arguments;
  TextEditingController notecontroller = new TextEditingController();
  var orderMethod = "".obs;

  @override
  void onInit() {
    print(machine.addOn1);
    super.onInit();
  }
}
