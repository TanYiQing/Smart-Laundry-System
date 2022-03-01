import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class ManageMachineController extends GetxController {
  var laundry = Get.arguments;
  var machinelist = <Machine>[].obs;
  var choose1 = true.obs;
  var choose2 = false.obs;
  var choose3 = false.obs;
  var choose4 = false.obs;

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
  }

  Future<void> selectFilter(String machineType) async {
    var machine;
    if (machineType == "All") {
      machine = await RemoteServices.loadMachine(
          laundry.laundryID.toString(), "All");
      choose1.value = true;
      choose2.value = false;
      choose3.value = false;
      choose4.value = false;
    } else if (machineType == "Washing Machine") {
      machine = await RemoteServices.loadMachine(
          laundry.laundryID.toString(), "Washing Machine");
      choose1.value = false;
      choose2.value = true;
      choose3.value = false;
      choose4.value = false;
    } else if (machineType == "Dry Washing Machine") {
      machine = await RemoteServices.loadMachine(
          laundry.laundryID.toString(), "Dry Washing Machine");
      choose1.value = false;
      choose2.value = false;
      choose3.value = true;
      choose4.value = false;
    } else {
      machine = await RemoteServices.loadMachine(
          laundry.laundryID.toString(), "Ironing Machine");
      choose1.value = false;
      choose2.value = false;
      choose3.value = false;
      choose4.value = true;
    }
    if (machine != null) {
      machinelist.assignAll(machine);
      print(machinelist);
    }

    update();
  }
}
