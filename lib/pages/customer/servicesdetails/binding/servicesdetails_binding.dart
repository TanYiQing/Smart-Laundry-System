import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:get/get.dart';

class ServicesDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesDetailsController>(() => ServicesDetailsController());
  }
}
