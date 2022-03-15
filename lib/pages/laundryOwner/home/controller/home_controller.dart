import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class HomeLaundryController extends GetxController {
  var user = Get.arguments;
  var approval = "0".obs;

  @override
  void onInit() {
    calculateApproval();
    super.onInit();
  }

  Future<void> calculateApproval() async {
    approval.value =
        (await RemoteServices.calculateApproval(user.email.toString()))!;

    update();
  }
}
