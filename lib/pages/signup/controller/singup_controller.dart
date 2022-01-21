import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var selectedRole = "".obs;
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();

  void signupUser() {
    RemoteServices.signUpUser(
        firstnamecontroller.text.toString(),
        lastnamecontroller.text.toString(),
        emailcontroller.text.toString(),
        passwordcontroller.text.toString(),
        selectedRole.value.toString());
    // Get.offAllNamed('/bottombar', arguments: user);
  }

  void handleRadioButton(var role) {
    selectedRole.value = role;
    update();
    print(selectedRole.value);
  }
}
