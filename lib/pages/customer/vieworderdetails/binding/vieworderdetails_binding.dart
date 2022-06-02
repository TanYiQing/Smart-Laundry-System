import 'package:final_year_project/pages/customer/vieworderdetails/controller/vieworderdetails_controller.dart';
import 'package:get/get.dart';

class ViewOrderDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewOrderDetailsController>(() => ViewOrderDetailsController());
  }
}
