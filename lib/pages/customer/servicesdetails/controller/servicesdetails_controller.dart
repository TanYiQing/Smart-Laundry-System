import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class ServicesDetailsController extends GetxController {
  var laundry = Get.arguments;
  var machinelist = <Machine>[].obs;

  @override
  void onInit() {
    loadMachine();
    super.onInit();
  }

  Future<void> loadMachine() async {
    var machine =
        await RemoteServices.loadMachine(laundry.laundryID.toString(), "All");
    if (machine != null) {
      machinelist.assignAll(machine);
      print(machinelist);
    }
    update();
  }
}
