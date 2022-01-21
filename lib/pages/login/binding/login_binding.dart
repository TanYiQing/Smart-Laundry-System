import 'package:final_year_project/pages/login/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBingdings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<LoginController>(() => LoginController());
    Get.put(LoginController());
    
  }
}
