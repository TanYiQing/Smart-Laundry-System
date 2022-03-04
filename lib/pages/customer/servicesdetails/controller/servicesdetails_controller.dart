import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServicesDetailsController extends GetxController {
  var laundry = Get.arguments;
  var machinelist = <Machine>[].obs;
  final normalwashKey = GlobalKey();
  final drywashKey = GlobalKey();
  final ironingKey = GlobalKey();

  BuildContext? get context => null;

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

  Future scrollToItem(String servicesType) async {
    if (servicesType == "Normal Wash") {
      final context = normalwashKey.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    } else if (servicesType == "Dry Wash") {
      final context = drywashKey.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    } else {
      final context = ironingKey.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    update();
  }
}
