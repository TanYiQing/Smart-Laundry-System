import 'package:final_year_project/pages/customer/trackorder/controller/trackorder_controller.dart';
import 'package:get/get.dart';

class TrackOrderBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrackOrderController>(() => TrackOrderController());
  }
}
