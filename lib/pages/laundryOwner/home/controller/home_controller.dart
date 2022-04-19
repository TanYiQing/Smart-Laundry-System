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

  String checkWalletAmount(String walletAmount) {
    var arr = walletAmount.split('.');
    if (arr[0].length < 8) {
      return arr[0];
    } else {
      return arr[0].substring(0, 8) + "...";
    }
  }
}
