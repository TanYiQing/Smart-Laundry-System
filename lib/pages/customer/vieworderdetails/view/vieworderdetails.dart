import 'package:final_year_project/pages/customer/vieworderdetails/controller/vieworderdetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ViewOrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Order Details",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ViewOrderDetailsController>(builder: (controller) {
        return SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "Order ID # ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(controller.order.orderId),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "Receipt ID # ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(controller.order.receiptId.toString()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "Order Method: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(controller.order.ordermethod.toString()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "Collect Time: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(controller.order.collecttime.toString()),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Email: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.email.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Contact Number: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.phone.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Address: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: Text(controller.address.toString())),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Laundry ID #: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.laundryId.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Laundry Name: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.laundryID.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Machine ID #: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.machineId.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Machine Type: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.machineType.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Price: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.price.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "AddOn 1: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.addon1.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "AddOn 2: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.addon2.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "AddOn 3: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.addon3.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Total Price: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.totalPrice.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "Note to Laundry: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(controller.order.notetolaundry.toString()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  (controller.order.status.toString() == "Order Placed")
                      ? Column(
                          children: [
                            Lottie.asset("assets/lottie/order-placed.json"),
                            Text(
                              "Order placed, wait for confirmation from laundry! Please wait patiently.",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : (controller.order.status.toString() ==
                              "Order Confirmed")
                          ? Column(
                              children: [
                                Lottie.asset(
                                    "assets/lottie/orderconfirmed.json"),
                                Text(
                                  "Order confirmed, order will be process soon!",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )
                          : (controller.order.status.toString() ==
                                  "Order Processing")
                              ? Column(
                                  children: [
                                    Lottie.asset(
                                        "assets/lottie/orderprocessing.json"),
                                    Text(
                                      "Order processing, your order will be complete soon.",
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Lottie.asset(
                                        "assets/lottie/ordercompleted.json"),
                                    Text(
                                      "Congratulations! You have successfully completed an order.",
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
