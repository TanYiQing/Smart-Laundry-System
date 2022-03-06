import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ServicesDetailsController extends GetxController {
  var laundry = Get.arguments;
  var machinelist = <Machine>[].obs;
  var washingmachinelist = <Machine>[].obs;
  var drywashingmachinelist = <Machine>[].obs;
  var ironingmachinelist = <Machine>[].obs;
  var currentIndex = "0".obs;
  final normalwashKey = GlobalKey();
  final drywashKey = GlobalKey();
  final ironingKey = GlobalKey();
  final topKey = GlobalKey();

  BuildContext? get context => null;

  @override
  void onInit() {
    loadMachine();
    calculateAvailability();
    super.onInit();
  }

  Future<void> loadMachine() async {
    var machine =
        await RemoteServices.loadMachine(laundry.laundryID.toString(), "All");
    if (machine != null) {
      machinelist.assignAll(machine);
      print(machinelist);
    }

    var washingmachine = await RemoteServices.loadMachine(
        laundry.laundryID.toString(), "Washing Machine");
    if (washingmachine != null) {
      washingmachinelist.assignAll(washingmachine);
      print(washingmachinelist);
    }

    var drywashingmachine = await RemoteServices.loadMachine(
        laundry.laundryID.toString(), "Dry Washing Machine");
    if (drywashingmachine != null) {
      drywashingmachinelist.assignAll(drywashingmachine);
      print(drywashingmachinelist);
    }

    var ironingmachine = await RemoteServices.loadMachine(
        laundry.laundryID.toString(), "Ironing Machine");
    if (ironingmachine != null) {
      ironingmachinelist.assignAll(ironingmachine);
      print(ironingmachinelist);
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
    } else if (servicesType == "Ironing") {
      final context = ironingKey.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    } else {
      final context = topKey.currentContext!;
      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    update();
  }

  void calculateAvailability() {
    RemoteServices.calculateAvailability(laundry.laundryID.toString(), "All");
    RemoteServices.calculateAvailability(laundry.laundryID.toString(), "Washing Machine");
    RemoteServices.calculateAvailability(laundry.laundryID.toString(), "Dry Washing Machine");
    RemoteServices.calculateAvailability(laundry.laundryID.toString(), "Ironing Machine");
  }
}
