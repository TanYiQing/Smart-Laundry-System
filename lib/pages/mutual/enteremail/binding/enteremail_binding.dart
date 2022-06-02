import 'package:final_year_project/pages/mutual/enteremail/controller/enteremail_controller.dart';
import 'package:get/get.dart';

class EnterEmailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnterEmailController>(() => EnterEmailController());
  }
}
