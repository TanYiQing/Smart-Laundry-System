import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class HomeLaundryController extends GetxController {
  var user = Get.arguments;
  var approval = "0".obs;
  var ishidden = true.obs;
  var walletAmount = "RM15010.20".obs;

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

  void toggleWalletAmount() {
    if (ishidden.isTrue) {
      ishidden.toggle();
    } else {
      ishidden.value = true;
    }
    if (ishidden.isTrue) {
      walletAmount.value = "RM-----";
    }else{
      walletAmount.value = "RM15010.20";
    }
    update();
  }
}
