import 'package:final_year_project/models/address.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ChooseLocationController extends GetxController {
  var addressList = <Address>[].obs;
  static final appData = GetStorage();


  @override
  void onInit() {
    loadAddress();
    super.onInit();
  }

  Future<void> loadAddress() async {
    var address = await RemoteServices.loadAddress(appData.read("email"));

    if (address != null) {
      addressList.assignAll(address);
      print(addressList);
    }
    update();
  }
}
