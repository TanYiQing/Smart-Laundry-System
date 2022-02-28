import 'package:final_year_project/pages/laundryOwner/addmachine/controller/addmachine_controller.dart';
import 'package:get/get.dart';

class AddMachineBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddMachineController>(() => AddMachineController());
  }
}
