import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RouterAuthMiddleware extends GetMiddleware {
  final appData = GetStorage();
  @override
  int? priority = 0;

  //RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (appData.read("isAuthenticated") == false) {
      Future.delayed(Duration(seconds: 1),
          () => Get.snackbar("Notice", "Please login first"));
      return RouteSettings(name: "/login");
    }
  }
}
