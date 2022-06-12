import 'package:final_year_project/models/address.dart';
import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ServicesMachineDetailsController extends GetxController {
  var user = Get.arguments;
  var machine = Get.arguments;
  TextEditingController notecontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController contactcontroller = new TextEditingController();

  var orderMethod = "Reservation".obs;
  var paymentMethod = "".obs;
  var checked1 = false.obs;
  var checked2 = false.obs;
  var checked3 = false.obs;
  var totalPrice = 0.00.obs;
  var deliveryPrice = 0.00.obs;
  var collectTime = "".obs;
  var notetoLaundry = "".obs;
  TimeOfDay time = TimeOfDay.now().replacing(hour: 11, minute: 30);
  var addressList = <Address>[].obs;
  static final appData = GetStorage();
  var index = 0.obs;
  var addon1 = "".obs;
  var addon2 = "".obs;
  var addon3 = "".obs;

  @override
  void onInit() {
    loadAddress();
    totalPrice.value = double.parse(machine.price);
    print(machine.addOn1);
    super.onInit();
  }

  void handleRadioButton(var method) {
    orderMethod.value = method;
    if (orderMethod.value == "Reservation") {
      totalPrice.value -= 5.00;
    } else {
      totalPrice.value += 5.00;
    }
    update();
    print(orderMethod.value);
  }

  void handleRadioButtonPayment(var method) {
    paymentMethod.value = method;
    update();
    print(paymentMethod.value);
  }

  void handleCheckBox(var checkValue, String addon) {
    if (addon == "addon1") {
      checked1.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn1Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn1Price);
      }
      print(checked1.value);
    } else if (addon == "addon2") {
      checked2.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn2Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn2Price);
      }
    } else {
      checked3.value = checkValue;
      if (checked1.value == true) {
        totalPrice.value += double.parse(machine.addOn3Price);
      } else {
        totalPrice.value -= double.parse(machine.addOn3Price);
      }
    }

    update();
  }

  void onTimeChanged(TimeOfDay newTime) {
    time = newTime;
    update();
  }

  Future<void> loadAddress() async {
    var address = await RemoteServices.loadAddress(appData.read("email"));

    if (address != null) {
      addressList.assignAll(address);
      print(addressList);
    }
    update();
  }

  Future<void> updateAdress() async {
    var result = await Get.toNamed("/chooselocation");
    if (result == null) {
      print("null");
    } else {
      print(result["index"]);
      index.value = result["index"];
    }
    print(addressList[index.value].name);
    update();
  }

  void getTime(DateTime time) {
    collectTime.value = time.toString();
    print(collectTime.value);
  }

  void getNote(String note) {
    notetoLaundry.value = note.toString();
  }

  Future<void> placeorder(String date) async {
    if (checked1.value == true) {
      addon1.value = machine.addOn1;
    } else {
      addon1.value = "";
    }
    if (checked2.value == true) {
      addon2.value = machine.addOn2;
    } else {
      addon2.value = "";
    }
    if (checked3.value == true) {
      addon3.value = machine.addOn3;
    } else {
      addon3.value = "";
    }
    Order order = new Order(
        laundryId: machine.laundryID,
        machineId: machine.machineID,
        machineType: machine.machineType,
        price: machine.price,
        addon1: addon1.value,
        addon2: addon2.value,
        addon3: addon3.value,
        email: appData.read("email"),
        name: (orderMethod.value == "Reservation")
            ? namecontroller.text.toString()
            : addressList[index.value].name,
        phone: (orderMethod.value == "Reservation")
            ? contactcontroller.text.toString()
            : addressList[index.value].contact,
        ordermethod: orderMethod.value,
        addressId: (orderMethod.value == "Reservation")
            ? "No Address"
            : addressList[index.value].addressID,
        collecttime: collectTime.value,
        notetolaundry: notecontroller.text.toString(),
        totalPrice: totalPrice.value.toStringAsFixed(2));

    if (paymentMethod.value == "Cash On Delivery") {
      RemoteServices.makePaymentCOD(
          appData.read("email").toString(),
          (orderMethod.value == "Reservation")
              ? namecontroller.text.toString()
              : addressList[index.value].name.toString(),
          (orderMethod.value == "Reservation")
              ? contactcontroller.text.toString()
              : addressList[index.value].contact.toString(),
          orderMethod.value.toString(),
          (orderMethod.value == "Reservation")
              ? "No Ad"
              : addressList[index.value].addressID.toString(),
          collectTime.value.toString(),
          notecontroller.text.toString(),
          machine.laundryID.toString(),
          machine.machineID.toString(),
          machine.machineType.toString(),
          machine.price.toString(),
          addon1.value.toString(),
          addon2.value.toString(),
          addon3.value.toString(),
          totalPrice.value.toStringAsFixed(2),
          date);

      Get.offAllNamed("/payment", arguments: order);
    } else {
      Get.toNamed("/paymentonline", arguments: order);
    }
  }
}
