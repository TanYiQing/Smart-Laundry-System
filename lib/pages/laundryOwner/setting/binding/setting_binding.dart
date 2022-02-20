import 'package:final_year_project/pages/laundryOwner/setting/controller/setting_controller.dart';
import 'package:get/get.dart';

class SettingLaundryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingLaundryController>(() => SettingLaundryController());
  }
}
