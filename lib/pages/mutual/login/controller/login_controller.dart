import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final appData = GetStorage();
  var email = '';
  var password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var user;
  var selectedRole = "".obs;
  var ishidden = true.obs;
  var rememberme = false.obs;

  Future<void> clickLogin() async {
    user = await RemoteServices.loginUser(emailController.text.toString(),
        passwordController.text.toString(), selectedRole.value.toString());
  }

  void handleRadioButton(var role) {
    selectedRole.value = role;
    update();
    print(selectedRole.value);
  }

  void togglePassword() {
    if (ishidden.isTrue) {
      ishidden.toggle();
    } else {
      ishidden.value = true;
    }
    update();
  }

  void rememberMe(var remember) {
    String email = emailController.text.toString();
    String password = passwordController.text.toString();
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Empty Field",
          "Please make sure the email and password is filled in.");
      return;
    } else {
      rememberme.value = remember;
      update();
      appData.write("staySignedIn", rememberme.value);
      appData.write("email", email);
      appData.write("password", password);
      appData.write("role", selectedRole.value);
    }
  }
}
