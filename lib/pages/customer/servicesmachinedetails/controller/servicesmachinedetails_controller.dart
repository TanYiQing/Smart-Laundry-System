import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesMachineDetailsController extends GetxController {
  var machine = Get.arguments;
  TextEditingController notecontroller = new TextEditingController();
  var orderMethod = "Reservation".obs;
  var checked1 = false.obs;
  var checked2 = false.obs;
  var checked3 = false.obs;
  var totalPrice = 0.00.obs;
  var deliveryPrice = 0.00.obs;
  TimeOfDay time = TimeOfDay.now().replacing(hour: 11, minute: 30);

  @override
  void onInit() {
    totalPrice.value = double.parse(machine.price);
    print(machine.addOn1);
    super.onInit();
  }

  void handleRadioButton(var method) {
    orderMethod.value = method;
    if (orderMethod.value == "Reservation") {
      totalPrice.value -= 5.00;
    } else {
      totalPrice.value += 5.00;
    }
    // totalPrice.value += deliveryPrice.value;
    update();
    print(orderMethod.value);
  }

  void handleCheckBox(var checkValue, String addon) {
    if (addon == "addon1") {
      checked1.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn1Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn1Price);
      }
      print(checked1.value);
    } else if (addon == "addon2") {
      checked2.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn2Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn2Price);
      }
    } else {
      checked3.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn3Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn3Price);
      }
    }

    update();
  }

  void onTimeChanged(TimeOfDay newTime) {
    time = newTime;
    update();
  }

  void clickPlaceOrder() {}
}
