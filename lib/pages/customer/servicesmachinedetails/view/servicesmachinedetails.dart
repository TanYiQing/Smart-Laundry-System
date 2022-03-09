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
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
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
                                  ? "assets/images/drywashingmachine.png"
                                  : "assets/images/ironingmachine.png")),
                    ),
                  );
                }),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Calculation Base"),
                                  Row(
                                    children: [
                                      Text(
                                        "RM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth / 20),
                                      ),
                                      Text(
                                        controller.machine.price + " ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth / 20),
                                      ),
                                      Text(controller.machine.calculationBase),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Minimum Weight"),
                                  Text(controller.machine.minimumWeight + "kg")
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Maximum Weight"),
                                  Text(controller.machine.maximumWeight + "kg")
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Machine Status"),
                                  Text(
                                    controller.machine.available,
                                    style: TextStyle(
                                        color: (controller.machine.available ==
                                                "Available")
                                            ? Colors.green
                                            : Colors.red),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Add-On Services",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 20),
                        ),
                      ),
                    ),
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            (controller.machine.addOn1 != null)
                                ? Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(controller.machine.addOn1
                                            .toString()),
                                        Text("RM" +
                                            controller.machine.addOn1Price
                                                .toString())
                                      ],
                                    ),
                                  )
                                : Container(),
                            (controller.machine.addOn2 != null)
                                ? Container(
                                    child: Row(
                                      children: [
                                        Text(controller.machine.addOn2
                                            .toString())
                                      ],
                                    ),
                                  )
                                : Container(),
                            (controller.machine.addOn3 != null)
                                ? Container(
                                    child: Row(
                                      children: [
                                        Text(controller.machine.addOn3
                                            .toString())
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Note to laundry",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Place Order",
                          style: TextStyle(fontSize: screenWidth / 20),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.add_shopping_cart),
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 194, 203, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: screenWidth / 4,
                height: screenHeight / 20,
              ),
            ),
          )),
    );
  }
}
