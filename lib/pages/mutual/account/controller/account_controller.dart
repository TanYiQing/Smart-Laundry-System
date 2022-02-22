import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  var user = Get.arguments;
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController oldpasswordcontroller = new TextEditingController();
  TextEditingController newpasswordcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();
  TextEditingController gendercontroller = new TextEditingController();
  TextEditingController birthdaycontroller = new TextEditingController();
}
