import 'dart:async';

import 'package:final_year_project/pages/customer/payment/controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
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
          return SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Lottie.asset("assets/lottie/order-placed.json"),
                    Text(
                      "HOORAY! ORDER PLACED",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 18),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ProgressStepper(
                      stepCount: 4,
                      width: screenWidth / 1.2,
                      height: screenWidth / 20,
                      currentStep: 1,
                      progressColor: Colors.green,
                    ),
                    SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Order Receipt",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Payer Information",
                                        style: TextStyle(
                                            fontSize: screenWidth / 20),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Name:",
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          ),
                                          Text(
                                            controller.order.name,
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Email:",
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          ),
                                          Text(
                                            controller.order.email,
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Order Method:",
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          ),
                                          Text(
                                            controller.order.orderMethod,
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Time:",
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          ),
                                          Text(
                                            controller.order.collectTime,
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Total Price:",
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          ),
                                          Text(
                                            "RM" + controller.order.totalPrice,
                                            style: TextStyle(
                                                fontSize: screenWidth / 22),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    // Text(controller.order.email),
                    // Expanded(
                    //   child: WebView(
                    //     initialUrl:
                    //         'https://hubbuddies.com/270607/onesource/php/generateBill.php?email=' +
                    //             controller.order.email.toString() +
                    //             '&name=' +
                    //             controller.order.name.toString() +
                    //             '&ordermethod=' +
                    //             controller.order.orderMethod.toString() +
                    //             '&addressID=' +
                    //             controller.order.addressID.toString() +
                    //             '&collecttime=' +
                    //             controller.order.collectTime.toString() +
                    //             '&notetolaundry=' +
                    //             controller.order.note.toString() +
                    //             '&laundryID=' +
                    //             controller.order.laundryID.toString() +
                    //             '&machineID=' +
                    //             controller.order.machineID.toString() +
                    //             '&price=' +
                    //             controller.order.price.toString() +
                    //             '&addon1=' +
                    //             controller.order.addon1.toString() +
                    //             '&addon2=' +
                    //             controller.order.addon2.toString() +
                    //             '&addon3=' +
                    //             controller.order.addon3.toString() +
                    //             '&totalPrice=' +
                    //             controller.order.totalPrice.toString(),
                    //     javascriptMode: JavascriptMode.unrestricted,
                    //     onWebViewCreated: (WebViewController webViewController) {
                    //       _controller.complete(webViewController);
                    //     },
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
