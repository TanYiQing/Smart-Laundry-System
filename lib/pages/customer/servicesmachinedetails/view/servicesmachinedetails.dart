import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/pages/customer/servicesmachinedetails/controller/servicesmachinedetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesMachineDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              floating: true,
              pinned: true,
              expandedHeight: screenWidth / 2,
              flexibleSpace: GetBuilder<ServicesMachineDetailsController>(
                  builder: (controller) {
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: GetBuilder<ServicesMachineDetailsController>(
                      builder: (controller) {
                    return Text(
                      controller.machine.machineType,
                      style: TextStyle(color: Colors.black),
                    );
                  }),
                  centerTitle: true,
                  background: Container(
                    decoration: BoxDecoration(color: Colors.blue[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    width: double.infinity,
                    height: screenHeight / 2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Image.asset((controller.machine.machineType ==
                                "Washing Machine")
                            ? "assets/images/washingmachine.png"
                            : (controller.machine.machineType ==
                                    "Dry Washing Machine")
                                ? "assets/images.drywashingmachine.png"
                                : "assets/images/ironingmachine.png")),
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Container(height: 1000),
            )
          ],
        ),
      ),
    );
  }
}
