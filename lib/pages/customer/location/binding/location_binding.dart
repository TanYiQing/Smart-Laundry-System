import 'package:final_year_project/pages/customer/location/controller/location_controller.dart';
import 'package:get/get.dart';

class LocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(() => LocationController());
  }
}
