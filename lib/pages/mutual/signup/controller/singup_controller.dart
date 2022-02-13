import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var selectedRole = "".obs;
  var ishidden1 = true.obs;
  var ishidden2 = true.obs;
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();

  void signupUser() {
    if (firstnamecontroller.text == "" ||
        lastnamecontroller.text == "" ||
        emailcontroller.text == "" ||
        passwordcontroller.text == "" ||
        confirmpasswordcontroller.text == "") {
      Get.snackbar("Sign Up Failed", "Please fill in all the required field");
    } else if (passwordcontroller.text != confirmpasswordcontroller.text) {
      Get.snackbar("Sign Up Failed", "Password mismatch");
    } else if (selectedRole.value == "") {
      Get.snackbar("Sign Up Failed", "Please select a role");
    } else {
      RemoteServices.signUpUser(
          firstnamecontroller.text.toString(),
          lastnamecontroller.text.toString(),
          emailcontroller.text.toString(),
          passwordcontroller.text.toString(),
          selectedRole.value.toString());
      firstnamecontroller.text = "";
      lastnamecontroller.text = "";
      emailcontroller.text = "";
      passwordcontroller.text = "";
      confirmpasswordcontroller.text = "";
      selectedRole.value = "";
      Get.offAllNamed('/intro');
    }
  }

  void handleRadioButton(var role) {
    selectedRole.value = role;
    update();
    print(selectedRole.value);
  }

  void togglePassword1() {
    if (ishidden1.isTrue) {
      ishidden1.toggle();
    } else {
      ishidden1.value = true;
    }
    update();
  }

  void togglePassword2() {
    if (ishidden2.isTrue) {
      ishidden2.toggle();
    } else {
      ishidden2.value = true;
    }
    update();
  }
}
