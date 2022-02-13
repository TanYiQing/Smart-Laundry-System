import 'package:final_year_project/pages/mutual/intro/controller/intro_controller.dart';
import 'package:get/get.dart';

class IntroBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<IntroController>(() => IntroController());
    Get.put(IntroController());
  }
}
