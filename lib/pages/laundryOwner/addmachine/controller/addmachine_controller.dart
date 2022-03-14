import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddMachineController extends GetxController {
  var laundry = Get.arguments;
  var selectedPriceBase = "".obs;
  TextEditingController minimumweightcontroller = new TextEditingController();
  TextEditingController maximumweightcontroller = new TextEditingController();
  TextEditingController pricecontroller = new TextEditingController();
  TextEditingController durationcontroller = new TextEditingController();
  TextEditingController addon1controller = new TextEditingController();
  TextEditingController addon2controller = new TextEditingController();
  TextEditingController addon3controller = new TextEditingController();
  TextEditingController addon1pricecontroller = new TextEditingController();
  TextEditingController addon2pricecontroller = new TextEditingController();
  TextEditingController addon3pricecontroller = new TextEditingController();

  var isShow1 = false.obs;
  var isShow2 = false.obs;
  var isShow3 = false.obs;
  var counter = 0.obs;

  @override
  void onInit() {
    minimumweightcontroller.text = "0";
    maximumweightcontroller.text = "0";
    pricecontroller.text = "0";
    durationcontroller.text = "0";
    addon1controller.text = "";
    addon2controller.text = "";
    addon3controller.text = "";
    addon1pricecontroller.text = "0";
    addon2pricecontroller.text = "0";
    addon3pricecontroller.text = "0";
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
      durationcontroller.text =
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
    } else if (id == 3) {
      pricecontroller.text =
          (int.parse(pricecontroller.text.toString()) - 1).toString();
    } else {
      durationcontroller.text =
          (int.parse(pricecontroller.text.toString()) - 1).toString();
    }
    update();
  }

  void addMachine(String machineType) {
    if (selectedPriceBase.value == "" ||
        minimumweightcontroller.text == "0" ||
        maximumweightcontroller.text == "0" ||
        pricecontroller.text == "0" ||
        durationcontroller.text == "0") {
      Get.snackbar(
          "Failed to add machine", "Please make sure all required field is filled.");
    } else {
      RemoteServices.addMachine(
        machineType,
        selectedPriceBase.value.toString(),
        minimumweightcontroller.text.toString(),
        maximumweightcontroller.text.toString(),
        pricecontroller.text.toString(),
        durationcontroller.text.toString(),
        laundry.laundryID.toString(),
        addon1controller.text.toString(),
        addon1pricecontroller.text.toString(),
        addon2controller.text.toString(),
        addon2pricecontroller.text.toString(),
        addon3controller.text.toString(),
        addon3pricecontroller.text.toString(),
        
      );
    }
  }

  void clickAddMore() {
    if (counter.value <= 2) {
      counter++;
    } else {
      Get.snackbar("Opps", "Only maximum of 3 add-on can be add...");
    }
    if (counter.value == 1) {
      isShow1.value = true;
    }
    if (counter.value == 2) {
      isShow1.value = true;
      isShow2.value = true;
    }
    if (counter.value == 3) {
      isShow1.value = true;
      isShow2.value = true;
      isShow3.value = true;
    }
    update();
  }

  void clickDelete(int id) {
    if (counter.value == 3) {
      if (id == 1) {
        isShow1.value = false;
      } else if (id == 2) {
        isShow2.value = false;
      } else if (id == 3) {
        isShow3.value = false;
      }
      counter--;
    } else if (counter.value == 2) {
      if (id == 1) {
        isShow1.value = false;
      } else if (id == 2) {
        isShow2.value = false;
      } else if (id == 3) {
        isShow3.value = false;
      }
      counter--;
    } else if (counter.value == 1) {
      if (id == 1) {
        isShow1.value = false;
      } else if (id == 2) {
        isShow2.value = false;
      } else if (id == 3) {
        isShow3.value = false;
      }
      counter--;
    }
    update();
  }
}
