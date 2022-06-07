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

  void deleteAddress(String? addressID) {
    RemoteServices.deleteAddress(addressID!);
    // print(addressID);
  }

  void editAddress(int index) {
    print(index);
    Address address = new Address(
        addressID: addressList[index].addressID,
        name: addressList[index].name,
        contact: addressList[index].contact,
        address1: addressList[index].address1,
        address2: addressList[index].address2,
        zip: addressList[index].zip,
        city: addressList[index].city,
        state: addressList[index].state,
        addressType: addressList[index].addressType,
        email: addressList[index].email);
    Get.toNamed('/editlocation', arguments: address);
  }
}
