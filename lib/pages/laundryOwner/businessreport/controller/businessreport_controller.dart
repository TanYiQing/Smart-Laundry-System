import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class BusinessReportController extends GetxController {
  var user = Get.arguments;
  var laundryList = <Laundry>[].obs;

  @override
  void onInit() {
    loadLaundry();
    super.onInit();
  }

  Future<void> loadLaundry() async {
    var laundry = await RemoteServices.loadLaundry(user.email.toString());
    if (laundry != null) {
      laundryList.assignAll(laundry);
      print("Here");
      print(laundryList);
    }
    update();
  }

  String checkLaundryName(String laundryName) {
    if (laundryName.length < 15) {
      return laundryName;
    } else {
      return laundryName.substring(0, 15) + "...";
    }
  }

  void viewLaundryDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: laundryList[index].laundryID,
        laundryOwnerName: laundryList[index].laundryOwnerName,
        laundryOwnerContact: laundryList[index].laundryOwnerContact,
        laundryName: laundryList[index].laundryName,
        laundryAddress1: laundryList[index].laundryAddress1,
        laundryAddress2: laundryList[index].laundryAddress2,
        laundryZIP: laundryList[index].laundryZIP,
        laundryCity: laundryList[index].laundryCity,
        laundryState: laundryList[index].laundryState,
        dateLaunch: laundryList[index].dateLaunch,
        email: laundryList[index].email,
        approve: laundryList[index].approve);

    Get.toNamed("/businessreportcategorylaundry", arguments: laundry);
  }
}
