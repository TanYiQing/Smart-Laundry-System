import 'package:final_year_project/models/userprofile.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AccountController extends GetxController {
  var user = Get.arguments;

  var userList = <UserProfile>[].obs;
  var gender = "".obs;
  static final appData = GetStorage();
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController newpasswordcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();
  TextEditingController gendercontroller = new TextEditingController();
  TextEditingController birthdaycontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();

  @override
  void onInit() {
    loadUser();
    super.onInit();
  }

  void onClose() {
    loadUser();
    super.onClose();
  }

  void handleRadioButton(var method) {
    gender.value = method;
    update();
    print(gender.value);
  }

  void saveFirstName() {
    String email = appData.read("email");
    String firstName = firstnamecontroller.text.toString();
    String role = appData.read("role");
    RemoteServices.saveFirstName(email, firstName, role);
    update();
    Get.back();
    Get.delete<AccountController>();
  }

  void saveLastName() {
    String email = appData.read("email");
    String lastName = lastnamecontroller.text.toString();
    String role = appData.read("role");
    RemoteServices.saveLastName(email, lastName, role);
    update();
    Get.back();
    Get.delete<AccountController>();
  }

  Future<void> loadUser() async {
    String email = appData.read("email");
    String role = appData.read("role");
    var user = await RemoteServices.loadUser(email, role);
    if (user != null) {
      userList.assignAll(user);
    }
    gender.value=userList[0].gender.toString();
    firstnamecontroller.text=userList[0].firstName.toString();
    lastnamecontroller.text=userList[0].lastName.toString();
    birthdaycontroller.text=userList[0].birthday.toString();
    phonecontroller.text=userList[0].phone.toString();
    update();
  }

  void saveChangePassword() {
    String email = appData.read("email");
    String newpassword = newpasswordcontroller.text.toString();
    String confirmpassword = confirmpasswordcontroller.text.toString();
    String role = appData.read("role");

    RemoteServices.saveChangePassword(
        email, newpassword, confirmpassword, role);

    update();
    Get.back();
    Get.delete<AccountController>();
  }

  void saveGender() {
    String email = appData.read("email");
    String gEnder = gender.value;
    String role = appData.read("role");
    RemoteServices.saveGender(email, gEnder, role);
    update();
    Get.back();
    Get.delete<AccountController>();
  }

  void saveBirthday() {
    String email = appData.read("email");
    String birthday = birthdaycontroller.text.toString();
    String role = appData.read("role");
    RemoteServices.saveBirthday(email, birthday, role);
    update();
    Get.back();
    Get.delete<AccountController>();
  }

  void savePhone() {
    print("HEllo");
    String email = appData.read("email");
    String phone = phonecontroller.text.toString();
    String role = appData.read("role");
    RemoteServices.savePhone(email, phone, role);
    update();
    Get.back();
    Get.delete<AccountController>();
  }
}
