import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyLaundryDetailsController extends GetxController {
  TextEditingController ownernamecontroller = new TextEditingController();
  TextEditingController ownercontactcontroller = new TextEditingController();
  TextEditingController laundrynamecontroller = new TextEditingController();
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();
  TextEditingController zipcontroller = new TextEditingController();
  TextEditingController citycontroller = new TextEditingController();
  TextEditingController statecontroller = new TextEditingController();
  var laundry = Get.arguments;

  @override
  void onInit() {
    ownernamecontroller.text = laundry.laundryOwnerName;
    ownercontactcontroller.text = laundry.laundryOwnerContact;
    laundrynamecontroller.text = laundry.laundryName;
    address1controller.text = laundry.laundryAddress1;
    address2controller.text=laundry.laundryAddress2;
    zipcontroller.text=laundry.laundryZIP;
    citycontroller.text=laundry.laundryCity;
    statecontroller.text=laundry.laundryState;
    super.onInit();
  }
}
