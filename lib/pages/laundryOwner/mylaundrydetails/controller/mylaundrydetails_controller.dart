import 'dart:convert';
import 'dart:io';

import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
  File? laundryshopimage, ssmimage, businesslicenseimage, bankheaderimage;
  String? encoded_laundryshopimage,
      encoded_ssmimage,
      encoded_businesslicenseimage,
      encoded_bankheaderimage;

  @override
  void onInit() {
    ownernamecontroller.text = laundry.laundryOwnerName;
    ownercontactcontroller.text = laundry.laundryOwnerContact;
    laundrynamecontroller.text = laundry.laundryName;
    address1controller.text = laundry.laundryAddress1;
    address2controller.text = laundry.laundryAddress2;
    zipcontroller.text = laundry.laundryZIP;
    citycontroller.text = laundry.laundryCity;
    statecontroller.text = laundry.laundryState;
    super.onInit();
  }

  void saveLaundryOwnerDetails() {
    String laundryID = laundry.laundryID;
    String ownername = ownernamecontroller.text.toString();
    String ownercontact = ownercontactcontroller.text.toString();
    RemoteServices.saveLaundryOwnerDetails(laundryID, ownername, ownercontact);
  }

  void saveLaundryDetails() {
    String laundryID = laundry.laundryID;
    String laundryName = laundrynamecontroller.text.toString();
    String laundryAddress1 = address1controller.text.toString();
    String laundryAddress2 = address2controller.text.toString();
    String zip = zipcontroller.text.toString();
    String city = citycontroller.text.toString();
    String state = statecontroller.text.toString();
    RemoteServices.saveLaundryDetails(laundryID, laundryName, laundryAddress1,
        laundryAddress2, zip, city, state);
  }

  

  // Future chooseGallery(id) async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     if (id == 1) {
  //       laundryshopimage = File(pickedFile.path);
  //     } else if (id == 2) {
  //       ssmimage = File(pickedFile.path);
  //     } else if (id == 3) {
  //       businesslicenseimage = File(pickedFile.path);
  //     } else {
  //       bankheaderimage = File(pickedFile.path);
  //     }
  //   } else {
  //     print("No Image Selected");
  //   }
  //   update();
  //   Get.back();
  // }

  // Future chooseCamera(id) async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: ImageSource.camera);

  //   if (pickedFile != null) {
  //     if (id == 1) {
  //       laundryshopimage = File(pickedFile.path);
  //     } else if (id == 2) {
  //       ssmimage = File(pickedFile.path);
  //     } else if (id == 3) {
  //       businesslicenseimage = File(pickedFile.path);
  //     } else {
  //       bankheaderimage = File(pickedFile.path);
  //     }
  //   } else {
  //     print("No Image Selected");
  //   }
  //   update();
  //   Get.back();
  // }

  // void chooseRemove(id) {
  //   if (id == 1) {
  //     laundryshopimage = null;
  //   } else if (id == 2) {
  //     ssmimage = null;
  //   } else if (id == 3) {
  //     businesslicenseimage = null;
  //   } else {
  //     bankheaderimage = null;
  //   }
  //   update();
  //   Get.back();
  // }

  // void saveLaundryDocuments() {
  //   print(base64Encode(ssmimage!.readAsBytesSync()));
  //   print(base64Encode(businesslicenseimage!.readAsBytesSync()));
  //   print(base64Encode(bankheaderimage!.readAsBytesSync()));
  //   if (ssmimage == null ||
  //       businesslicenseimage == null ||
  //       bankheaderimage == null) {
  //     Get.snackbar("Failed to add laundry",
  //         "Please make sure all required documents are uploaded.");
  //   } else {
  //     encoded_ssmimage = base64Encode(ssmimage!.readAsBytesSync());
  //     encoded_businesslicenseimage =
  //         base64Encode(businesslicenseimage!.readAsBytesSync());
  //     encoded_bankheaderimage =
  //         base64Encode(bankheaderimage!.readAsBytesSync());
  //     RemoteServices.saveLaundryDocuments(
  //         laundry.laundryID,
  //         encoded_ssmimage!,
  //         encoded_businesslicenseimage!,
  //         encoded_bankheaderimage!);
  //     update();
  //   }
  // }
}
