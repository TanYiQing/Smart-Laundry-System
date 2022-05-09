import 'dart:async';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentController extends GetxController {
  var order = Get.arguments;
  Completer<WebViewController> webviewcontroller = Completer<WebViewController>();
}
