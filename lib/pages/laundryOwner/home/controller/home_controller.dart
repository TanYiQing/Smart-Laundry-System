import 'package:final_year_project/models/userprofile.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeLaundryController extends GetxController {
  var user = Get.arguments;
  var approval = "0".obs;
  static final appData = GetStorage();
  var userList = <UserProfile>[].obs;
  @override
  void onInit() {
    calculateApproval();
    loadUser();
    super.onInit();
  }

  Future<void> calculateApproval() async {
    approval.value =
        (await RemoteServices.calculateApproval(appData.read("email").toString()))??"0";

    update();
  }

  Future<void> loadUser() async {
    String email = appData.read("email");
    String role = appData.read("role");
    var user = await RemoteServices.loadUser(email, role);
    if (user != null) {
      userList.assignAll(user);
    }
    update();
  }
}
