import 'package:final_year_project/pages/customer/addlocation/controller/addlocation_controller.dart';
import 'package:final_year_project/pages/customer/map/controller/map_controller.dart';
import 'package:get/get.dart';

class AddLocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddLocationController>(() => AddLocationController());
    Get.put<MapController>(MapController());
  }
}
