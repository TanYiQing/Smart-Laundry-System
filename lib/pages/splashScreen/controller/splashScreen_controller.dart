import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void onInit() {
    super.onInit();
    loadSplash();
  }

  void loadSplash() {
    Timer(Duration(seconds: 2), () {
      Get.offAllNamed('/intro');
    });
  }
}
