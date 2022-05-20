import 'package:final_year_project/models/errorMachine.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';

class ErrorMachinesDetailsController extends GetxController {
  var laundry = Get.arguments;
  var errorList = <ErrorMachine>[].obs;

  void onInit() {
    loadError();
    super.onInit();
  }

  Future<void> loadError() async {
    var errorMachine =
        await RemoteServices.loadError(laundry.laundryID.toString());
    if (errorMachine != null) {
      errorList.assignAll(errorMachine);
      print("Here");
      print(errorList);
    }
    update();
  }

  void resolvedError(String? errorID) {
    RemoteServices.resolvedError(errorID!);
    // print(addressID);
  }
}
