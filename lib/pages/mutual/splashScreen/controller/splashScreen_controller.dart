import 'dart:async';

import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreenController extends GetxController {
  final appData = GetStorage();
  var user;
  void onInit() {
    super.onInit();
    loadSplash();
  }

  void loadSplash() {
    Timer(Duration(seconds: 2), () {
      if (appData.read("staySignedIn") == true) {
        loginUser();
      } else {
        Get.offAllNamed('/intro');
      }
    });
  }

  Future<void> loginUser() async {
    user = await RemoteServices.loginUser(
        appData.read("email"), appData.read("password"), appData.read("role"));
   
  }
}
