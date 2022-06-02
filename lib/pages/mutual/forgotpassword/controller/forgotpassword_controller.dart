import 'dart:async';

import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordController extends GetxController {
  var email = Get.arguments;
  StreamController<ErrorAnimationType>? errorController;
  TextEditingController textEditingController = TextEditingController();

  Future<void> verifyCode() async {
    String? result = await RemoteServices.verifyCode(
        email[0], email[1], textEditingController.text.toString());
    if (result.toString() == "Success") {
      Get.toNamed('/changepasswordmutual', arguments: email);
    } else {
      Get.snackbar("Wrong verification code",
          "Please try again with a correct verification code");
    }
  }
}
