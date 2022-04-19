import 'package:final_year_project/pages/customer/chooselocation/controller/chooselocation_controller.dart';
import 'package:final_year_project/pages/customer/chooselocation/tile/address_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ChooseLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Choose Location".tr,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ChooseLocationController>(builder: (controller) {
        return (controller.addressList.length == 0)
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight / 3,
                      child:
                          Lottie.asset("assets/lottie/address-not-found.json"),
                    ),
                    Text("NO ADDRESS FOUND",
                        style: TextStyle(
                            fontSize: screenWidth / 18,
                            fontWeight: FontWeight.bold)),
                    Text("Please add your address now",
                        style: TextStyle(fontSize: screenWidth / 25))
                  ],
                ),
              )
            : Column(
                children: [
                  Container(
                      child: Flexible(
                          child: Center(
                              child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: ((screenWidth / screenHeight) / 0.23),
                    children:
                        List.generate(controller.addressList.length, (index) {
                      return GestureDetector(
                          onTap: () {
                            Get.back(result: {"index": index});
                          },
                          child: AddressTile(controller.addressList[index]));
                    }),
                  )))),
                ],
              );
      }),
    );
  }
}
