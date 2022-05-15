import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyOrderLaundryController extends GetxController {
  final appData = GetStorage();
  var newandconfirmedorderList = <Order>[].obs;
  var ongoingorderList = <Order>[].obs;
  var completedorderList = <Order>[].obs;
  late var selectOrderStatus = "Order Placed";
  final List<String> orderStatus = [
    "Order Placed",
    "Order Confirmed",
    "Order Processing",
    "Order Completed"
  ];

  @override
  void onInit() {
    loadNewAndConfirmedOrder();
    loadOnGoingOrder();
    loadConfirmedOrder();
    super.onInit();
  }

  Future<void> loadNewAndConfirmedOrder() async {
    var newAndConfirmedOrder = await RemoteServices.loadNewAndConfirmedOrder();
    if (newAndConfirmedOrder != null) {
      newandconfirmedorderList.assignAll(newAndConfirmedOrder);
    }
    update();
  }

  Future<void> loadOnGoingOrder() async {
    print("Hello");
    var onGoingOrder = await RemoteServices.loadOnGoingOrderLaundry();
    if (onGoingOrder != null) {
      ongoingorderList.assignAll(onGoingOrder);
    }
    update();
  }

  Future<void> loadConfirmedOrder() async {
    var confirmedOrder = await RemoteServices.loadCompletedOrderLaundry();
    if (confirmedOrder != null) {
      completedorderList.assignAll(confirmedOrder);
    }
    update();
  }

  void chooseOrderStatus(value) {
    selectOrderStatus = value;
    print(selectOrderStatus);
    update();
  }

  void updateOrderStatus(String? orderId) {
    RemoteServices.updateOrderStatus(orderId!, selectOrderStatus);
  }
}
