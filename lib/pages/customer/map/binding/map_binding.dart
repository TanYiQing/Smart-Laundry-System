import 'package:final_year_project/pages/customer/map/controller/map_controller.dart';
import 'package:get/get.dart';

class MapBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MapController>(() => MapController());
  }

}