import 'package:final_year_project/pages/laundryOwner/account/controller/account_controller.dart';
import 'package:get/get.dart';

class AccountLaundryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountLaundryController>(() => AccountLaundryController());
  }
}
