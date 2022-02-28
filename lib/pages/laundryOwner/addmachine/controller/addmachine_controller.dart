import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddMachineController extends GetxController {
  var laundry = Get.arguments;
  var selectedPriceBase = "".obs;
  TextEditingController minimumweightcontroller = new TextEditingController();
  TextEditingController maximumweightcontroller = new TextEditingController();
  TextEditingController pricecontroller = new TextEditingController();
  TextEditingController machinequantitycontroller = new TextEditingController();

  @override
  void onInit() {
    minimumweightcontroller.text = "0";
    maximumweightcontroller.text = "0";
    pricecontroller.text = "0";
    machinequantitycontroller.text = "0";
    super.onInit();
  }

  void handleRadioButton(var base) {
    selectedPriceBase.value = base;
    update();
    print(selectedPriceBase.value);
  }

  void clickaddbutton(int id) {
    if (id == 1) {
      minimumweightcontroller.text =
          (int.parse(minimumweightcontroller.text.toString()) + 1).toString();
    } else if (id == 2) {
      maximumweightcontroller.text =
          (int.parse(maximumweightcontroller.text.toString()) + 1).toString();
    } else if (id == 3) {
      pricecontroller.text =
          (int.parse(pricecontroller.text.toString()) + 1).toString();
    } else {
      machinequantitycontroller.text =
          (int.parse(machinequantitycontroller.text.toString()) + 1).toString();
    }
    update();
  }

  void clickremovebutton(int id) {
    if (id == 1) {
      minimumweightcontroller.text =
          (int.parse(minimumweightcontroller.text.toString()) - 1).toString();
    } else if (id == 2) {
      maximumweightcontroller.text =
          (int.parse(maximumweightcontroller.text.toString()) - 1).toString();
    } else if (id == 3) {
      pricecontroller.text =
          (int.parse(pricecontroller.text.toString()) - 1).toString();
    } else {
      machinequantitycontroller.text =
          (int.parse(machinequantitycontroller.text.toString()) - 1).toString();
    }
    update();
  }
}
