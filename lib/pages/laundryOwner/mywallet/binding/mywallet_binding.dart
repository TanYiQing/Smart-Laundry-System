import 'package:final_year_project/pages/laundryOwner/mylaundry/controller/mylaundry_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/controller/mywallet_controller.dart';
import 'package:get/get.dart';

class MyWalletBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyWalletController>(() => MyWalletController());
    Get.lazyPut<MyLaundryController>(() => MyLaundryController());
  }
}
