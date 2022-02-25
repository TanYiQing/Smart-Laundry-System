import 'package:final_year_project/pages/laundryOwner/mylaundry/controller/mylaundry_controller.dart';
import 'package:get/get.dart';

class MyLaundryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLaundryController>(() => MyLaundryController());
  }
}
