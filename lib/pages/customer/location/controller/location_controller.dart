import 'package:final_year_project/models/address.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  var addressList = <Address>[].obs;
  var user = Get.arguments;

  @override
  void onInit() {
    loadAddress();
    super.onInit();
  }

  Future<void> loadAddress() async {
    var address = await RemoteServices.loadAddress(user.email);

    if (address != null) {
      addressList.assignAll(address);
      print(addressList);
    }
    update();
  }
}
