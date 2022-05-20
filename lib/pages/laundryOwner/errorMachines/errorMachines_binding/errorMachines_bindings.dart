import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachinesDetails_controller.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachines_controller.dart';
import 'package:get/get.dart';

class ErrorMachinesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ErrorMachinesController>(() => ErrorMachinesController());
    Get.lazyPut<ErrorMachinesDetailsController>(
        () => ErrorMachinesDetailsController());
  }
}
