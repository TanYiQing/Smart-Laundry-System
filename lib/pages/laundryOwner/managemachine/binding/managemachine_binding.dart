import 'package:final_year_project/pages/laundryOwner/managemachine/controller/managemachine_controller.dart';
import 'package:get/get.dart';

class ManageMachineBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageMachineController>(() => ManageMachineController());
  }
}
