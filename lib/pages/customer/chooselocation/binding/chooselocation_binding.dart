import 'package:final_year_project/pages/customer/chooselocation/controller/chooselocation_controller.dart';
import 'package:get/get.dart';

class ChooseLocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseLocationController>(() => ChooseLocationController());
  }
}