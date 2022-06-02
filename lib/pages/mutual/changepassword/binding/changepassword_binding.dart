import 'package:final_year_project/pages/mutual/changepassword/controller/changepassword_controller.dart';
import 'package:get/get.dart';

class ChangePasswordMutualBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordMutualController>(() => ChangePasswordMutualController());
  }
}
