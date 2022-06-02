import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class ViewOrderDetailsController extends GetxController {
  var order = Get.arguments;
  String? address;
  String? laundryID;

  @override
  void onInit() {
    loadAddressID();
    loadLaundryID();
    super.onInit();
  }

  Future<void> loadAddressID() async {
    address = await RemoteServices.loadAddressID(order.addressId.toString());

    List customeraddress = address!.split('#');
    print(customeraddress[1].toString());
    address = customeraddress[1].toString();
    update();
  }

  Future<void> loadLaundryID() async {
    laundryID = await RemoteServices.loadLaundryID(order.laundryId.toString());
    update();
  }
}
