import 'package:final_year_project/pages/customer/location/controller/location_controller.dart';
import 'package:final_year_project/pages/customer/location/tile/address_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Location".tr,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            GetBuilder<LocationController>(builder: (controller) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed("/addnewlocation", arguments: controller.user);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/add-point.png",
                    width: screenWidth / 15,
                  ),
                ),
              );
            })
          ]),
      body: GetBuilder<LocationController>(builder: (controller) {
        return (controller.addressList.length == 0)
            ? Center(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset("assets/images/noaddress.png"),
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
                    children: List.generate(controller.addressList.length, (index) {
                      return GestureDetector(
                          onTap: () {
                            // controller.viewLaundryDetails(index);
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
