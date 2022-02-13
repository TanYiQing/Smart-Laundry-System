import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:get/get.dart';

class BottomBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(()=>BottomBarController());
  }

}