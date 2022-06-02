import 'package:final_year_project/pages/laundryOwner/myorder/controller/myorder_controller.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/tile/ongoingorder_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnGoingOrderPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "On Going Order",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GetBuilder<MyOrderLaundryController>(builder: (controller) {
          return (controller.ongoingorderList.length != 0)
              ? Column(
                  children: [
                    Container(
                        child: Flexible(
                            child: Center(
                                child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: ((screenWidth / screenHeight) / 0.26),
                      children:
                          List.generate(controller.ongoingorderList.length, (index) {
                        return GestureDetector(
                            onTap: () {
                              controller.viewOngoingOrderDetails(index);
                            },
                            child: OnGoingOrderTile(
                                controller.ongoingorderList[index],index));
                      }),
                    )))),
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight / 3,
                        child: Lottie.asset(
                          "assets/lottie/order-not-found.json",
                        ),
                      ),
                      Text("NO ON GOING ORDER",
                          style: TextStyle(
                              fontSize: screenWidth / 18,
                              fontWeight: FontWeight.bold)),
                      Text("Please go and check your new order",
                          style: TextStyle(fontSize: screenWidth / 25))
                    ],
                  ),
                );
        }));
  }
}
