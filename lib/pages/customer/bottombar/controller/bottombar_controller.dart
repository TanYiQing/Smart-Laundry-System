import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/models/userprofile.dart';
import 'package:final_year_project/services/remoteServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class BottomBarController extends GetxController {
  final appData = GetStorage();
  var serviceList = <Laundry>[].obs;
  var favouriteList = [].obs;
  var onGoingOrderList = [].obs;
  var laundryNearbyList = [].obs;
  var completedOrderList = [].obs;
  var userList = <UserProfile>[].obs;
  var user = Get.arguments;
  var tabIndex = 0;
  late PageController pagecontroller = new PageController();
  final List<String> orderStatus = [
    "Washing Machine",
    "Dry Washing Machine",
    "Ironing Machine",
  ];

  @override
  void onInit() {
    loadOnGoingOrder();
    loadUser();
    loadLaundryNearby();
    super.onInit();
  }

  void changeTab(int index) {
    tabIndex = index;
    if (tabIndex == 0) {
      loadOnGoingOrder();
      loadLaundryNearby();
      loadUser();
    } else if (tabIndex == 1) {
      loadFavourite();
    } else if (tabIndex == 2) {
      loadOnGoingOrder();
    } else if (tabIndex == 3) {
      loadCompletedOrderCustomer();
    } else {
      loadUser();
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

  Future<void> loadFavourite() async {
    var service = await RemoteServices.loadFavourite(appData.read("email"));
    if (service != null) {
      serviceList.assignAll(service);
      for (int i = 0; i < serviceList.length; i++) {
        if (serviceList[i].favourite == "unfavourite") {
          favouriteList.insert(i, "unfavourite");
        } else {
          favouriteList.insert(i, "favourite");
        }
      }
    }
    print(favouriteList);
    update();
  }

  void handlefavourite(int index, String laundryID) {
    RemoteServices.deleteFavourite(laundryID, appData.read("email"));
    serviceList.removeAt(index);
    update();
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

  void viewAllOnGoingOrder() {
    tabIndex = 2;
    update();
  }

  Future<void> loadCompletedOrderCustomer() async {
    var completedOrder =
        await RemoteServices.loadCompletedOrderCustomer(appData.read("email"));
    if (completedOrder != null) {
      completedOrderList.assignAll(completedOrder);
    }
    print(completedOrderList);
    update();
  }

  void trackOrder(index) {
    print(index);
    Order order = new Order(status: onGoingOrderList[index].status);
    Get.toNamed('/track', arguments: order);
  }

  Future<void> loadUser() async {
    String email = appData.read("email");
    String role = appData.read("role");
    var userProfile = await RemoteServices.loadUser(email, role);
    if (userProfile != null) {
      userList.assignAll(userProfile);
    }
    update();
  }

  void viewOrderDetails(index) {
    Order order = new Order(
      orderId: onGoingOrderList[index].orderId,
      receiptId: onGoingOrderList[index].receiptId,
      email: onGoingOrderList[index].email,
      name: onGoingOrderList[index].name,
      phone: onGoingOrderList[index].phone,
      ordermethod: onGoingOrderList[index].ordermethod,
      addressId: onGoingOrderList[index].addressId,
      collecttime: onGoingOrderList[index].collecttime,
      notetolaundry: onGoingOrderList[index].notetolaundry,
      laundryId: onGoingOrderList[index].laundryId,
      machineId: onGoingOrderList[index].machineId,
      machineType: onGoingOrderList[index].machineType,
      price: onGoingOrderList[index].price,
      addon1: onGoingOrderList[index].addon1,
      addon2: onGoingOrderList[index].addon2,
      addon3: onGoingOrderList[index].addon3,
      totalPrice: onGoingOrderList[index].totalPrice,
      status: onGoingOrderList[index].status,
      orderCreated: onGoingOrderList[index].orderCreated,
    );
    Get.toNamed('/orderdetails', arguments: order);
  }

  void viewCompletedOrderDetails(index) {
    Order order = new Order(
      orderId: completedOrderList[index].orderId,
      receiptId: completedOrderList[index].receiptId,
      email: completedOrderList[index].email,
      name: completedOrderList[index].name,
      phone: completedOrderList[index].phone,
      ordermethod: completedOrderList[index].ordermethod,
      addressId: completedOrderList[index].addressId,
      collecttime: completedOrderList[index].collecttime,
      notetolaundry: completedOrderList[index].notetolaundry,
      laundryId: completedOrderList[index].laundryId,
      machineId: completedOrderList[index].machineId,
      machineType: completedOrderList[index].machineType,
      price: completedOrderList[index].price,
      addon1: completedOrderList[index].addon1,
      addon2: completedOrderList[index].addon2,
      addon3: completedOrderList[index].addon3,
      totalPrice: completedOrderList[index].totalPrice,
      status: completedOrderList[index].status,
      orderCreated: completedOrderList[index].orderCreated,
    );
    Get.toNamed('/orderdetails', arguments: order);
  }

  Future<void> loadLaundryNearby() async {
    var laundryNearby =
        await RemoteServices.loadLaundryNearby(appData.read("email"));
    if (laundryNearby != null) {
      laundryNearbyList.assignAll(laundryNearby);
    }
    print(laundryNearbyList);
    for (int i = 0; i < laundryNearbyList.length; i++) {
      if (laundryNearbyList[i].favourite == "unfavourite") {
        favouriteList.insert(i, "unfavourite");
      } else {
        favouriteList.insert(i, "favourite");
      }
    }
    update();
  }

  void viewServicesDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: laundryNearbyList[index].laundryID,
        laundryOwnerName: laundryNearbyList[index].laundryOwnerName,
        laundryOwnerContact: laundryNearbyList[index].laundryOwnerContact,
        laundryName: laundryNearbyList[index].laundryName,
        laundryAddress1: laundryNearbyList[index].laundryAddress1,
        laundryAddress2: laundryNearbyList[index].laundryAddress2,
        laundryZIP: laundryNearbyList[index].laundryZIP,
        laundryCity: laundryNearbyList[index].laundryCity,
        laundryState: laundryNearbyList[index].laundryState,
        dateLaunch: laundryNearbyList[index].dateLaunch,
        email: laundryNearbyList[index].email,
        approve: laundryNearbyList[index].approve);

    Get.toNamed("/servicesdetails", arguments: laundry);
  }

  void viewFavouriteServicesDetails(index) {
    Laundry laundry = new Laundry(
        laundryID: serviceList[index].laundryID,
        laundryOwnerName: serviceList[index].laundryOwnerName,
        laundryOwnerContact: serviceList[index].laundryOwnerContact,
        laundryName: serviceList[index].laundryName,
        laundryAddress1: serviceList[index].laundryAddress1,
        laundryAddress2: serviceList[index].laundryAddress2,
        laundryZIP: serviceList[index].laundryZIP,
        laundryCity: serviceList[index].laundryCity,
        laundryState: serviceList[index].laundryState,
        dateLaunch: serviceList[index].dateLaunch,
        email: serviceList[index].email,
        approve: serviceList[index].approve);

    Get.toNamed("/servicesdetails", arguments: laundry);
  }
}
