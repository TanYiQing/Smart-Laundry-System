import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordMutualController extends GetxController {
  var email = Get.arguments;
  TextEditingController newpasswordcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();

  void saveChangePassword() {
    String useremail = email[0].toString();
    String newpassword = newpasswordcontroller.text.toString();
    String confirmpassword = confirmpasswordcontroller.text.toString();
    String role = email[1].toString();
    print(useremail);
    print(role);

    if (newpassword != "" || confirmpassword != "") {
      RemoteServices.saveChangePassword(
          useremail, newpassword, confirmpassword, role);
      Get.offAndToNamed('/intro');
    } else {
      Get.snackbar(
          "Failed to change password", "Please try again with a new password");
    }
    update();
  }
}
