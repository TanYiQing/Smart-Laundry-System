import 'package:final_year_project/pages/signup/controller/singup_controller.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<LoginController>(() => LoginController());
    Get.put(SignupController());
    
  }
}