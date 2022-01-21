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

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    // loadAccount();
    if (appData.read("Login") == true) {
      loginUser();
    }
  }

  void loadAccount() {
    String email = appData.read("email") ?? '';
    String password = appData.read("password") ?? '';

    emailController.text = email;
    passwordController.text = password;
  }

  Future<void> loginUser() async {
    user = await RemoteServices.loginUser(
        emailController.text.toString(), passwordController.text.toString(),selectedRole.value.toString());
    // Get.offAllNamed('/bottombar');
  }

  void clickLogin() {
    RemoteServices.loginUser(
        emailController.text.toString(), passwordController.text.toString(),selectedRole.value.toString());
    // Get.offAllNamed('/bottombar', arguments: user);
  }

  void handleRadioButton(var role) {
    selectedRole.value = role;
    update();
    print(selectedRole.value);
  }
}
