import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddNewLaundryController extends GetxController {
  TextEditingController ownernamecontroller = new TextEditingController();
  TextEditingController ownercontactcontroller = new TextEditingController();
  TextEditingController laundrynamecontroller = new TextEditingController();
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();
  TextEditingController zipcontroller = new TextEditingController();
  TextEditingController citycontroller = new TextEditingController();
  TextEditingController statecontroller = new TextEditingController();
  var currentStep = 0.obs;

  void clickContinue() {
    if (currentStep.value == 2) {
      print("End");
    } else {
      currentStep.value++;
      update();
    }
  }

  void clickCancel() {
    if (currentStep.value == 0) {
    } else {
      currentStep.value--;
      update();
    }
  }

  void tapStep(int index) {
    currentStep.value = index;
    update();
  }
}
