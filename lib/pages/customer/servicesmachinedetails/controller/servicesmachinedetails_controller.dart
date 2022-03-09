import 'package:get/get.dart';

class ServicesMachineDetailsController extends GetxController {
  var machine = Get.arguments;

  @override
  void onInit() {
    print(machine.addOn1);
    super.onInit();
  }
}
