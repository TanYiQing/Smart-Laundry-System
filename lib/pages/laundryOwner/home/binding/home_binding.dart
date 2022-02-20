import 'package:final_year_project/pages/laundryOwner/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeLaundryBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeLaundryController>(() => HomeLaundryController());
  }

}