import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class ServicesController extends GetxController {
  var serviceList = <Laundry>[].obs;
  var serviceType = Get.arguments;

  @override
  void onInit() {
    loadServices();
    super.onInit();
  }

  Future<void> loadServices() async {
    var service = await RemoteServices.loadService(serviceType.toString());
    if (service != null) {
      serviceList.assignAll(service);
      print(serviceList);
    }
    update();
  }

  String checkLaundryName(String laundryName) {
    if (laundryName.length < 15) {
      return laundryName;
    } else {
      return laundryName.substring(0, 15) + "...";
    }
  }

  void viewServicesDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: serviceList[index].laundryID,
        laundryOwnerName: serviceList[index].laundryOwnerName,
        laundryOwnerContact: serviceList[index].laundryOwnerContact,
        laundryName: serviceList[index].laundryName,
        laundryAddress1: serviceList[index].laundryAddress1,
        laundryAddress2: serviceList[index].laundryAddress2,
        laundryZIP: serviceList[index].laundryZIP,
        laundryCity: serviceList[index].laundryCity,
        laundryState: serviceList[index].laundryState,
        dateLaunch: serviceList[index].dateLaunch,
        email: serviceList[index].email,
        approve: serviceList[index].approve);

    Get.toNamed("/servicesdetails", arguments: laundry);
  }
}
