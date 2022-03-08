import 'package:final_year_project/pages/customer/servicesmachinedetails/controller/servicesmachinedetails_controller.dart';
import 'package:get/get.dart';

class ServicesMachineDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesMachineDetailsController>(
        () => ServicesMachineDetailsController());
  }
}
