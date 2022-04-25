import 'package:final_year_project/pages/customer/bottombar/branch/favourite/tile/favourite_tile.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class FavouritePage extends StatelessWidget {
  final controller = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Favourite",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: GetBuilder<BottomBarController>(builder: (controller) {
              return (controller.serviceList.length!=0)
                  ? Column(
                      children: [
                        Container(
                            child: Flexible(
                                child: Center(
                                    child: GridView.count(
                          crossAxisCount: 1,
                          childAspectRatio:
                              ((screenWidth / screenHeight) / 0.2),
                          children: List.generate(controller.serviceList.length,
                              (index) {
                            return GestureDetector(
                                onTap: () {
                                  // controller.viewServicesDetails(index);
                                },
                                child: FavouriteTile(
                                    controller.serviceList[index], index));
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
                              "assets/lottie/favourite-not-found.json",
                            ),
                          ),
                          Text("NO FAVOURITE ITEM",
                              style: TextStyle(
                                  fontSize: screenWidth / 18,
                                  fontWeight: FontWeight.bold)),
                          Text("Explore and add it now",
                              style: TextStyle(fontSize: screenWidth / 25))
                        ],
                      ),
                    );
            })));
  }
}
