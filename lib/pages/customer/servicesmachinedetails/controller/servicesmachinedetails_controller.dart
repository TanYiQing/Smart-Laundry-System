import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServicesMachineDetailsController extends GetxController {
  var machine = Get.arguments;
  TextEditingController notecontroller = new TextEditingController();
  var orderMethod = "".obs;
  var checked1 = false.obs;
  var checked2 = false.obs;
  var checked3 = false.obs;

  @override
  void onInit() {
    print(machine.addOn1);
    super.onInit();
  }

  void handleRadioButton(var method) {
    orderMethod.value = method;
    update();
    print(orderMethod.value);
  }

  void handleCheckBox(var checkValue, String addon) {
    if (addon == "addon1") {
      checked1.value = checkValue;
      print(checked1.value);
    } else if (addon == "addon2") {
      checked2.value = checkValue;
      print(checked2.value);
    } else {
      checked3.value = checkValue;
      print(checked3.value);
    }

    update();
  }

  void clickPlaceOrder() {}
}
