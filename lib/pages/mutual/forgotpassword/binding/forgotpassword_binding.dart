import 'package:final_year_project/pages/mutual/forgotpassword/controller/forgotpassword_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
