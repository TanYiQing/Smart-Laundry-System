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

  void viewNewAndConfirmedOrderDetails(index) {
    Order order = new Order(
      orderId: newandconfirmedorderList[index].orderId,
      receiptId: newandconfirmedorderList[index].receiptId,
      email: newandconfirmedorderList[index].email,
      name: newandconfirmedorderList[index].name,
      phone: newandconfirmedorderList[index].phone,
      ordermethod: newandconfirmedorderList[index].ordermethod,
      addressId: newandconfirmedorderList[index].addressId,
      collecttime: newandconfirmedorderList[index].collecttime,
      notetolaundry: newandconfirmedorderList[index].notetolaundry,
      laundryId: newandconfirmedorderList[index].laundryId,
      machineId: newandconfirmedorderList[index].machineId,
      machineType: newandconfirmedorderList[index].machineType,
      price: newandconfirmedorderList[index].price,
      addon1: newandconfirmedorderList[index].addon1,
      addon2: newandconfirmedorderList[index].addon2,
      addon3: newandconfirmedorderList[index].addon3,
      totalPrice: newandconfirmedorderList[index].totalPrice,
      status: newandconfirmedorderList[index].status,
      orderCreated: newandconfirmedorderList[index].orderCreated,
    );
    Get.toNamed('/orderdetails', arguments: order);
  }

  void viewOngoingOrderDetails(index) {
    Order order = new Order(
      orderId: ongoingorderList[index].orderId,
      receiptId: ongoingorderList[index].receiptId,
      email: ongoingorderList[index].email,
      name: ongoingorderList[index].name,
      phone: ongoingorderList[index].phone,
      ordermethod: ongoingorderList[index].ordermethod,
      addressId: ongoingorderList[index].addressId,
      collecttime: ongoingorderList[index].collecttime,
      notetolaundry: ongoingorderList[index].notetolaundry,
      laundryId: ongoingorderList[index].laundryId,
      machineId: ongoingorderList[index].machineId,
      machineType: ongoingorderList[index].machineType,
      price: ongoingorderList[index].price,
      addon1: ongoingorderList[index].addon1,
      addon2: ongoingorderList[index].addon2,
      addon3: ongoingorderList[index].addon3,
      totalPrice: ongoingorderList[index].totalPrice,
      status: ongoingorderList[index].status,
      orderCreated: ongoingorderList[index].orderCreated,
    );
    Get.toNamed('/orderdetails', arguments: order);
  }

  void viewCompletedOrderDetails(index) {
    Order order = new Order(
      orderId: completedorderList[index].orderId,
      receiptId: completedorderList[index].receiptId,
      email: completedorderList[index].email,
      name: completedorderList[index].name,
      phone: completedorderList[index].phone,
      ordermethod: completedorderList[index].ordermethod,
      addressId: completedorderList[index].addressId,
      collecttime: completedorderList[index].collecttime,
      notetolaundry: completedorderList[index].notetolaundry,
      laundryId: completedorderList[index].laundryId,
      machineId: completedorderList[index].machineId,
      machineType: completedorderList[index].machineType,
      price: completedorderList[index].price,
      addon1: completedorderList[index].addon1,
      addon2: completedorderList[index].addon2,
      addon3: completedorderList[index].addon3,
      totalPrice: completedorderList[index].totalPrice,
      status: completedorderList[index].status,
      orderCreated: completedorderList[index].orderCreated,
    );
    Get.toNamed('/orderdetails', arguments: order);
  }
}
