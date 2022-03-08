import 'package:final_year_project/models/availability.dart';
import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ServicesDetailsController extends GetxController {
  var laundry = Get.arguments;
  var machinelist = <Machine>[].obs;
  var washingmachinelist = <Machine>[].obs;
  var drywashingmachinelist = <Machine>[].obs;
  var ironingmachinelist = <Machine>[].obs;
  var availabilityAllList = <Availability>[].obs;
  var currentIndex = "0".obs;
  final normalwashKey = GlobalKey();
  final drywashKey = GlobalKey();
  final ironingKey = GlobalKey();
  final topKey = GlobalKey();
  late TooltipBehavior tooltipBehavior;

  BuildContext? get context => null;

  @override
  void onInit() {
    loadMachine();
    calculateAvailability();
    tooltipBehavior = TooltipBehavior(enable: true);
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

  Future<void> calculateAvailability() async {
    var availabilityAll = await RemoteServices.calculateAvailability(
        laundry.laundryID.toString());
    if (availabilityAll != null) {
      availabilityAllList.assignAll(availabilityAll);
      print(availabilityAllList);
    }
  }

  void viewServicesMachineDetails(index, String machineType) {
    if (machineType == "Washing Machine") {
      Machine machine = new Machine(
          machineID: washingmachinelist[index].machineID,
          machineType: washingmachinelist[index].machineType,
          calculationBase: washingmachinelist[index].calculationBase,
          minimumWeight: washingmachinelist[index].minimumWeight,
          maximumWeight: washingmachinelist[index].maximumWeight,
          price: washingmachinelist[index].price,
          laundryID: washingmachinelist[index].laundryID,
          available: washingmachinelist[index].available);
      Get.toNamed("/servicesmachinedetails", arguments: machine);
    } else if (machineType == "Dry Washing Machine") {
      Machine machine = new Machine(
          machineID: drywashingmachinelist[index].machineID,
          machineType: drywashingmachinelist[index].machineType,
          calculationBase: drywashingmachinelist[index].calculationBase,
          minimumWeight: drywashingmachinelist[index].minimumWeight,
          maximumWeight: drywashingmachinelist[index].maximumWeight,
          price: drywashingmachinelist[index].price,
          laundryID: drywashingmachinelist[index].laundryID,
          available: drywashingmachinelist[index].available);
      Get.toNamed("/servicesmachinedetails", arguments: machine);
    } else if (machineType == "Ironing Machine") {
      Machine machine = new Machine(
          machineID: ironingmachinelist[index].machineID,
          machineType: ironingmachinelist[index].machineType,
          calculationBase: ironingmachinelist[index].calculationBase,
          minimumWeight: ironingmachinelist[index].minimumWeight,
          maximumWeight: ironingmachinelist[index].maximumWeight,
          price: ironingmachinelist[index].price,
          laundryID: ironingmachinelist[index].laundryID,
          available: ironingmachinelist[index].available);
      Get.toNamed("/servicesmachinedetails", arguments: machine);
    }
  }
}
