import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddMachineController extends GetxController {
  var laundry = Get.arguments;
  var selectedPriceBase = "".obs;
  TextEditingController minimumweightcontroller = new TextEditingController();
  TextEditingController maximumweightcontroller = new TextEditingController();
  TextEditingController pricecontroller = new TextEditingController();

  @override
  void onInit() {
    minimumweightcontroller.text = "0";
    maximumweightcontroller.text = "0";
    pricecontroller.text = "0";

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
    } else {
      pricecontroller.text =
          (int.parse(pricecontroller.text.toString()) + 1).toString();
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
    } else {
      pricecontroller.text =
          (int.parse(pricecontroller.text.toString()) - 1).toString();
    }
    update();
  }

  void addMachine(String s) {
    if (selectedPriceBase.value == "" ||
        minimumweightcontroller.text == "" ||
        maximumweightcontroller.text == "" ||
        pricecontroller.text == "") {
      Get.snackbar(
          "Failed to add machine", "Please make sure all field is filled.");
    } else {
      RemoteServices.addMachine(
        selectedPriceBase.value.toString(),
        minimumweightcontroller.text.toString(),
        maximumweightcontroller.text.toString(),
        pricecontroller.text.toString(),
        laundry.laundryID.toString(),
      );
    }
  }
}
