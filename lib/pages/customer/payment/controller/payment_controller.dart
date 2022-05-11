import 'dart:async';

import 'package:final_year_project/services/remoteServices.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentController extends GetxController {
  var order = Get.arguments;
  final appData = GetStorage();
  Completer<WebViewController> webviewcontroller =
      Completer<WebViewController>();

  void proceedtoHomePage() {
    String email = appData.read("email");
    String password = appData.read("password");
    String role = appData.read("role");

    RemoteServices.proceedtoHomePage(email, password, role);
  }
}
