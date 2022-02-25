// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddNewLaundryController extends GetxController {
  TextEditingController ownernamecontroller = new TextEditingController();
  TextEditingController ownercontactcontroller = new TextEditingController();
  TextEditingController laundrynamecontroller = new TextEditingController();
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();
  TextEditingController zipcontroller = new TextEditingController();
  TextEditingController citycontroller = new TextEditingController();
  TextEditingController statecontroller = new TextEditingController();
  var currentStep = 0.obs;
  File? laundryshopimage, ssmimage, businesslicenseimage, bankheaderimage;
  var user = Get.arguments;
  String? encoded_laundryshopimage,
      encoded_ssmimage,
      encoded_businesslicenseimage,
      encoded_bankheaderimage;

  void clickContinue() {
    if (currentStep.value == 2) {
      addLaundry();
    } else {
      currentStep.value++;
      update();
    }
  }

  void clickCancel() {
    if (currentStep.value == 0) {
    } else {
      currentStep.value--;
      update();
    }
  }

  void tapStep(int index) {
    currentStep.value = index;
    update();
  }

  void addLaundry() {
    if (ownernamecontroller.text == "" ||
        ownercontactcontroller.text == "" ||
        laundrynamecontroller.text == "" ||
        address1controller.text == "" ||
        address2controller.text == "" ||
        zipcontroller.text == "" ||
        citycontroller.text == "" ||
        statecontroller.text == "") {
      Get.snackbar(
          "Failed to add laundry", "Please make sure all field is filled.");
    } else if (laundryshopimage == null ||
        ssmimage == null ||
        businesslicenseimage == null ||
        bankheaderimage == null) {
      Get.snackbar("Failed to add laundry",
          "Please make sure all required documents are uploaded.");
    } else {
      encoded_laundryshopimage =
          base64Encode(laundryshopimage!.readAsBytesSync());
      encoded_ssmimage = base64Encode(ssmimage!.readAsBytesSync());
      encoded_businesslicenseimage =
          base64Encode(businesslicenseimage!.readAsBytesSync());
      encoded_bankheaderimage =
          base64Encode(bankheaderimage!.readAsBytesSync());
      RemoteServices.addLaundry(
          ownernamecontroller.text.toString(),
          ownercontactcontroller.text.toString(),
          laundrynamecontroller.text.toString(),
          address1controller.text.toString(),
          address2controller.text.toString(),
          zipcontroller.text.toString(),
          citycontroller.text.toString(),
          statecontroller.text.toString(),
          user.email.toString(),
          encoded_laundryshopimage,
          encoded_ssmimage,
          encoded_businesslicenseimage,
          encoded_bankheaderimage);
      update();
    }
  }

  Future chooseGallery(id) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      if (id == 1) {
        laundryshopimage = File(pickedFile.path);
      } else if (id == 2) {
        ssmimage = File(pickedFile.path);
      } else if (id == 3) {
        businesslicenseimage = File(pickedFile.path);
      } else {
        bankheaderimage = File(pickedFile.path);
      }
    } else {
      print("No Image Selected");
    }
    update();
    Get.back();
  }

  Future chooseCamera(id) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      if (id == 1) {
        laundryshopimage = File(pickedFile.path);
      } else if (id == 2) {
        ssmimage = File(pickedFile.path);
      } else if (id == 3) {
        businesslicenseimage = File(pickedFile.path);
      } else {
        bankheaderimage = File(pickedFile.path);
      }
    } else {
      print("No Image Selected");
    }
    update();
    Get.back();
  }

  void chooseRemove(id) {
    if (id == 1) {
      laundryshopimage = null;
    } else if (id == 2) {
      ssmimage = null;
    } else if (id == 3) {
      businesslicenseimage = null;
    } else {
      bankheaderimage = null;
    }
    update();
    Get.back();
  }
}
