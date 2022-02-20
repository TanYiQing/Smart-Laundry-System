import 'package:final_year_project/pages/laundryOwner/myorder/controller/myorder_controller.dart';
import 'package:get/get.dart';

class MyOrderLaundryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrderLaundryController());
  }
}
