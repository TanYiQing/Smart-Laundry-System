import 'package:final_year_project/pages/mutual/splashScreen/controller/splashScreen_controller.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}