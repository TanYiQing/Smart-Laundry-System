import 'dart:async';

import 'package:final_year_project/pages/customer/payment/controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymenOnlinePage extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Online Payment",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<PaymentController>(builder: (controller) {
        return Center(
          child: Container(
              child: Column(children: [
            Expanded(
              child: WebView(
                initialUrl:
                    'https://hubbuddies.com/270607/onesource/php/generateBill.php?email=' +
                        controller.order.email.toString() +
                        '&name=' +
                        controller.order.name.toString() +
                        '&mobile=' +
                        controller.order.phone.toString() +
                        '&ordermethod=' +
                        controller.order.ordermethod.toString() +
                        '&addressID=' +
                        controller.order.addressId.toString() +
                        '&collecttime=' +
                        controller.order.collecttime.toString() +
                        '&notetolaundry=' +
                        controller.order.notetolaundry.toString() +
                        '&laundryID=' +
                        controller.order.laundryId.toString() +
                        '&machineID=' +
                        controller.order.machineId.toString() +
                        '&machineType=' +
                        controller.order.machineType.toString() +
                        '&price=' +
                        controller.order.price.toString() +
                        '&addon1=' +
                        controller.order.addon1.toString() +
                        '&addon2=' +
                        controller.order.addon2.toString() +
                        '&addon3=' +
                        controller.order.addon3.toString() +
                        '&totalPrice=' +
                        controller.order.totalPrice.toString(),
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
              ),
            )
          ])),
        );
      }),
    );
  }
}
