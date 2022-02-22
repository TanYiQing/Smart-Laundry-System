import 'package:final_year_project/pages/laundryOwner/addnewlaundry/controller/addnewlaundry_controller.dart';
import 'package:get/get.dart';

class AddNewLaundryBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddNewLaundryController>(() => AddNewLaundryController());
  }

}