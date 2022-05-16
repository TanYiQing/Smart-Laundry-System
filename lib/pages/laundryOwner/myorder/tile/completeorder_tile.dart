import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/controller/myorder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompletedOrderTile extends StatelessWidget {
  final Order order;
  final int index;

  CompletedOrderTile(this.order, this.index);
  final bottombarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID " + "#" + order.orderId.toString()),
                    Text("Receipt ID " + "#" + order.receiptId.toString()),
                    Divider(color: Colors.black),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(order.machineType.toString()),
                        Text("RM " + order.price.toString()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Addon Item"),
                        (order.ordermethod.toString() == "Delivery")
                            ? Text("RM " +
                                (double.parse(order.totalPrice.toString()) -
                                        double.parse(order.price.toString()) -
                                        5.00)
                                    .toStringAsFixed(2))
                            : Text("RM " +
                                (double.parse(order.totalPrice.toString()) -
                                        double.parse(order.price.toString()))
                                    .toStringAsFixed(2)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Charge"),
                        (order.ordermethod.toString() == "Delivery")
                            ? Text("RM 5.00")
                            : Text("RM 0.00")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 20)),
                        Text("RM " + order.totalPrice.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 20)),
                      ],
                    ),
                    GetBuilder<MyOrderLaundryController>(builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Time "),
                              Text(order.collecttime.toString(),
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: "Update Order Status",
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GetBuilder<MyOrderLaundryController>(
                                        builder: (controller) {
                                      return DropdownButton(
                                          style: TextStyle(
                                              fontSize: screenWidth / 20,
                                              color: Colors.red),
                                          items: [
                                            for (var data
                                                in controller.orderStatus)
                                              DropdownMenuItem(
                                                child: new Text(
                                                  data,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                value: data,
                                              )
                                          ],
                                          onChanged: (value) {
                                            controller.chooseOrderStatus(value);
                                          });
                                    })
                                  ],
                                ),
                                textConfirm: "Update".tr,
                                textCancel: "Cancel".tr,
                                onConfirm: () => controller.updateOrderStatus(
                                    controller.newandconfirmedorderList[index]
                                        .orderId),
                                onCancel: () => Get.back(),
                                cancelTextColor: Colors.black,
                                confirmTextColor: Colors.white,
                                buttonColor: Colors.teal,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Container(
                                  child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Update"),
                                ),
                              )),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.teal[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            order.status.toString(),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
