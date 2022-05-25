import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TrackOrderController extends GetxController {
  final appData = GetStorage();
  var onGoingOrderList = [].obs;
  var order = Get.arguments;
  var currentStep = 0.obs;

  @override
  void onInit() {
    changeStep();
    super.onInit();
  }

  Future<void> loadOnGoingOrder() async {
    var onGoingOrder =
        await RemoteServices.loadOnGoingOrder(appData.read("email"));
    if (onGoingOrder != null) {
      onGoingOrderList.assignAll(onGoingOrder);
    }
    print(onGoingOrderList);
    update();
  }

  void changeStep() {
    print(order.status);
    if (order.status == "Order Placed") {
      currentStep.value = 0;
    } else if (order.status == "Order Confirmed") {
      currentStep.value = 1;
    } else if (order.status == "Order Processing") {
      currentStep.value = 2;
    }
    update();
  }
}
