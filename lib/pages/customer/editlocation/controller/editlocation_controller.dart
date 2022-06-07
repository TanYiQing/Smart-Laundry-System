import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditLocationController extends GetxController {
  var address = Get.arguments;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController contactcontroller = new TextEditingController();
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();
  TextEditingController zipcontroller = new TextEditingController();
  TextEditingController citycontroller = new TextEditingController();
  TextEditingController statecontroller = new TextEditingController();
  var addressType = "".obs;

  @override
  void onInit() {
    namecontroller.text = address.name.toString();
    contactcontroller.text = address.contact.toString();
    address1controller.text = address.address1.toString();
    address2controller.text = address.address2.toString();
    zipcontroller.text = address.zip.toString();
    citycontroller.text = address.city.toString();
    statecontroller.text = address.state.toString();
    addressType.value = address.addressType.toString();
    super.onInit();
  }

  void handleRadioButton(var type) {
    addressType.value = type;
    update();
  }

  void saveAddress() {
    if (namecontroller.text == "" ||
        contactcontroller.text == "" ||
        address1controller.text == "" ||
        zipcontroller.text == "" ||
        citycontroller.text == "" ||
        statecontroller.text == "" ||
        addressType.value == "") {
      Get.snackbar("Failed to save address",
          "Please make sure all required field is filled.");
    } else {
      RemoteServices.saveAddress(
          namecontroller.text.toString(),
          contactcontroller.text.toString(),
          address1controller.text.toString(),
          address2controller.text.toString(),
          zipcontroller.text.toString(),
          citycontroller.text.toString(),
          statecontroller.text.toString(),
          addressType.value.toString(),
          address.addressID.toString());
    }
  }
}
