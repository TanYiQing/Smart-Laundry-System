import 'package:final_year_project/models/wallet.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class MyWalletController extends GetxController {
  var user = Get.arguments;
  var walletvalue = "0.00".obs;
  var walletList = <Wallet>[].obs;
  var ishidden = false.obs;

  @override
  void onInit() {
    loadWallet();
    calculateWallet();
    super.onInit();
  }

  Future<void> loadWallet() async {
    var wallet = await RemoteServices.loadWallet(user.email);
    if (wallet != null) {
      walletList.assignAll(wallet);
    }
    print("Hahaha");
    update();
  }

  Future<void> calculateWallet() async {
    var walletValue = await RemoteServices.calculateWallet(user.email);
    walletvalue.value = walletValue.toString();
    print(walletValue);
    update();
  }

  String checkWalletAmount(String walletAmount) {
    var arr = walletAmount.split('.');
    if (arr[0].length < 8) {
      return walletAmount;
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

    update();
  }
}
