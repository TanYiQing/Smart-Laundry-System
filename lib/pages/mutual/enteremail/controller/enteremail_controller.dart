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

  void sendVerificationCode() {
    RemoteServices.sendVerificationCode(
        emailController.text.toString(), selectedRole.value.toString());
  }
}
