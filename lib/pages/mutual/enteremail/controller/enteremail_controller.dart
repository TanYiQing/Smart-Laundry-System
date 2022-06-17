import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterEmailController extends GetxController {
  TextEditingController emailController = new TextEditingController();
  var selectedRole = "".obs;

  void handleRadioButton(var role) {
    selectedRole.value = role;
    update();
    print(selectedRole.value);
  }

  Future<void> sendVerificationCode() async {
    if (emailController.text == "" || selectedRole.value == "") {
      Get.snackbar("Verify failed", "Please enter email and role to verify.");
    } else {
      var response = await RemoteServices.sendVerificationCode(
          emailController.text.toString(), selectedRole.value.toString());
      if (response != "Failed") {
        Get.toNamed("/forgotpassword",
            arguments: [emailController.text.toString(), selectedRole.value]);
      } else {
        Get.snackbar("Verify failed", "Please try again later.");
      }
    }
  }
}
