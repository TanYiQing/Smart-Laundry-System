import 'package:final_year_project/pages/mutual/account/controller/account_controller.dart';
import 'package:get/get.dart';

class AccountBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
