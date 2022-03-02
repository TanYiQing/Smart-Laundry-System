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
}
