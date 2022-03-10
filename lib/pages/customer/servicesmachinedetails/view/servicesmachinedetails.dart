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
                    Divider(
                      thickness: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "Add-On Services",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Optional",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            (controller.machine.addOn1 != "")
                                ? CheckboxListTile(
                                    title: Text(
                                        controller.machine.addOn1.toString()),
                                    subtitle: Text("RM" +
                                        controller.machine.addOn1Price
                                            .toString()),
                                    onChanged: (bool? value) {},
                                    value: true,
                                  )
                                : Container(),
                            (controller.machine.addOn2 != "")
                                ? CheckboxListTile(
                                    title: Text(
                                        controller.machine.addOn2.toString()),
                                    subtitle: Text("RM" +
                                        controller.machine.addOn2Price
                                            .toString()),
                                    onChanged: (bool? value) {},
                                    value: true,
                                  )
                                : Container(),
                            (controller.machine.addOn3 != "")
                                ? CheckboxListTile(
                                    title: Text(
                                        controller.machine.addOn3.toString()),
                                    subtitle: Text("RM" +
                                        controller.machine.addOn3Price
                                            .toString()),
                                    onChanged: (bool? value) {},
                                    value: false,
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    }),
                    Divider(
                      thickness: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "Order Method",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Required",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: screenWidth / 3,
                            height: screenHeight / 6,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              elevation:
                                  controller.orderMethod.value == "Reservation"
                                      ? 8
                                      : 1,
                              child: Column(
                                children: [
                                  Radio(
                                    value: "Reservation",
                                    groupValue: controller.orderMethod.value,
                                    onChanged: (value) {
                                      // controller.handleRadioButton(value);
                                    },
                                    activeColor: Colors.teal,
                                  ),
                                  Text("Reservation"),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: screenWidth / 10,
                                          child: Image.asset(
                                              "assets/icons/booking.png")))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: screenWidth / 3,
                            height: screenHeight / 6,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              elevation:
                                  controller.orderMethod.value == "Delivery"
                                      ? 8
                                      : 1,
                              child: Column(
                                children: [
                                  Radio(
                                    value: "Delivery",
                                    groupValue: controller.orderMethod.value,
                                    onChanged: (value) {
                                      // controller.handleRadioButton(value);
                                    },
                                    activeColor: Colors.teal,
                                  ),
                                  Text("Delivery"),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: screenWidth / 10,
                                          child: Image.asset(
                                              "assets/icons/fooddelivery.png")))
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "Note to laundry",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Optional",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                child: TextField(
                                  controller: controller.notecontroller,
                                  decoration: InputDecoration(
                                      hintText: "Please input here",
                                      border: InputBorder.none,
                                      isDense: true),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
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
