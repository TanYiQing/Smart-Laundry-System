import 'dart:async';

import 'package:final_year_project/pages/customer/payment/controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<PaymentController>(builder: (controller) {
        return Center(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: WebView(
                    initialUrl:
                        'https://hubbuddies.com/270607/onesource/php/generateBill.php?email=' +
                            controller.order.email +
                            '&name=' +
                            controller.order.name +
                            '&ordermethod=' +
                            controller.order.orderMethod +
                            '&addressID=' +
                            controller.order.addressID +
                            '&collecttime=' +
                            controller.order.collectTime +
                            '&notetolaundry=' +
                            controller.order.note +
                            '&laundryID=' +
                            controller.order.laundryID +
                            '&machineID=' +
                            controller.order.machineID +
                            '&price=' +
                            controller.order.price +
                            '&addon1=' +
                            controller.order.addon1 +
                            '&addon2=' +
                            controller.order.addon2 +
                            '&addon3=' +
                            controller.order.addon3 +
                            '&totalPrice=' +
                            controller.order.totalPrice,
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController webViewController) {
                      _controller.complete(webViewController);
                    },
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
