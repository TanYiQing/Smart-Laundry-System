import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:get/get.dart';

class ServicesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesController>(() => ServicesController());
  }
}
