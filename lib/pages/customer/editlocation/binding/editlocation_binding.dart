import 'package:final_year_project/pages/customer/editlocation/controller/editlocation_controller.dart';
import 'package:get/get.dart';

class EditLocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditLocationController>(() => EditLocationController());
  }
}
