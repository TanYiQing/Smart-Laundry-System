import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:final_year_project/pages/customer/servicesmachinedetails/controller/servicesmachinedetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class ServicesMachineDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var now = new DateTime.now();
    var date = DateFormat('yyyy-MM-dd').format(now);
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
                                  Text(controller.machine.minimumWeight + " kg")
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
                                  Text(controller.machine.maximumWeight + " kg")
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
                                  Text((controller.machine.machineType !=
                                          "Ironing Machine")
                                      ? "Washing Time"
                                      : "Ironing Time"),
                                  Text(controller.machine.duration + " mins")
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
                                    (controller.machine.available ==
                                            "Available")
                                        ? "Available"
                                        : "Occupied Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
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
                      return (controller.machine.addOn1 != "" ||
                              controller.machine.addOn2 != "" ||
                              controller.machine.addOn3 != "")
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  (controller.machine.addOn1 != "")
                                      ? CheckboxListTile(
                                          title: Text(controller.machine.addOn1
                                              .toString()),
                                          subtitle: Text("RM" +
                                              controller.machine.addOn1Price
                                                  .toString()),
                                          onChanged: (bool? value) {
                                            controller.handleCheckBox(
                                                value, "addon1");
                                          },
                                          value: controller.checked1.value,
                                        )
                                      : Container(),
                                  (controller.machine.addOn2 != "")
                                      ? CheckboxListTile(
                                          title: Text(controller.machine.addOn2
                                              .toString()),
                                          subtitle: Text("RM" +
                                              controller.machine.addOn2Price
                                                  .toString()),
                                          onChanged: (bool? value) {
                                            controller.handleCheckBox(
                                                value, "addon2");
                                          },
                                          value: controller.checked2.value,
                                        )
                                      : Container(),
                                  (controller.machine.addOn3 != "")
                                      ? CheckboxListTile(
                                          title: Text(controller.machine.addOn3
                                              .toString()),
                                          subtitle: Text("RM" +
                                              controller.machine.addOn3Price
                                                  .toString()),
                                          onChanged: (bool? value) {
                                            controller.handleCheckBox(
                                                value, "addon3");
                                          },
                                          value: controller.checked3.value,
                                        )
                                      : Container(),
                                ],
                              ),
                            )
                          : Container(
                              child: Column(
                              children: [
                                Container(
                                    height: screenWidth / 5,
                                    width: screenWidth / 5,
                                    child: Lottie.asset(
                                      "assets/lottie/addon-not-available.json",
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("No add-on available"),
                                )
                              ],
                            ));
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
                            height: screenHeight / 5,
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
                                      controller.handleRadioButton(value);
                                    },
                                    activeColor: Colors.teal,
                                  ),
                                  Text(
                                    "Make Reservation",
                                    textAlign: TextAlign.center,
                                  ),
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
                            height: screenHeight / 5,
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
                                      controller.handleRadioButton(value);
                                    },
                                    activeColor: Colors.teal,
                                  ),
                                  Text(
                                    "Collect From Me (RM5)",
                                    textAlign: TextAlign.center,
                                  ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: GetBuilder<ServicesMachineDetailsController>(
                              builder: (controller) {
                            return (controller.orderMethod.value !=
                                    "Reservation")
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Choose your location"),
                                      GestureDetector(
                                          onTap: () async {
                                            controller.updateAdress();
                                          },
                                          child: Text("Change location"))
                                    ],
                                  )
                                : Container();
                          })),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: GetBuilder<ServicesMachineDetailsController>(
                              builder: (controller) {
                            return (controller.orderMethod.value !=
                                    "Reservation")
                                ? Container(
                                    height: screenWidth / 2.4,
                                    width: double.infinity,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      elevation: 10,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                                width: double.infinity,
                                                child: Image.asset(
                                                    "assets/images/map.png",
                                                    fit: BoxFit.fill)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  controller
                                                      .addressList[controller
                                                          .index.value]
                                                      .addressType
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          screenWidth / 20),
                                                ),
                                                Text(controller
                                                    .addressList[
                                                        controller.index.value]
                                                    .name
                                                    .toString()),
                                                Text(controller
                                                    .addressList[
                                                        controller.index.value]
                                                    .contact
                                                    .toString()),
                                                Text(""),
                                                Text(controller
                                                    .addressList[
                                                        controller.index.value]
                                                    .address1
                                                    .toString()),
                                                (controller
                                                            .addressList[
                                                                controller.index
                                                                    .value]
                                                            .address2
                                                            .toString() ==
                                                        "")
                                                    ? Text(controller
                                                        .addressList[controller
                                                            .index.value]
                                                        .address2
                                                        .toString())
                                                    : Container(),
                                                Text(controller
                                                        .addressList[controller
                                                            .index.value]
                                                        .zip
                                                        .toString() +
                                                    controller
                                                        .addressList[controller
                                                            .index.value]
                                                        .city
                                                        .toString()),
                                                Text(controller
                                                    .addressList[
                                                        controller.index.value]
                                                    .state
                                                    .toString()),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                : Container();
                          })),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: GetBuilder<ServicesMachineDetailsController>(
                              builder: (controller) {
                            return Text(
                                (controller.orderMethod.value == "Reservation")
                                    ? "Pick a reservation time"
                                    : "Pick a collection time");
                          })),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colors.teal,
                      ),
                    ),
                    GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Container(
                        child: TimePickerSpinner(
                          is24HourMode: false,
                          normalTextStyle:
                              TextStyle(fontSize: 24, color: Colors.grey),
                          highlightedTextStyle:
                              TextStyle(fontSize: 24, color: Colors.teal),
                          spacing: 50,
                          itemHeight: 50,
                          isForce2Digits: true,
                          minutesInterval:
                              int.parse(controller.machine.duration),
                          onTimeChange: (time) {
                            controller.getTime(time);
                          },
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
                                  onChanged: (text) {
                                    print(text);
                                  },
                                  controller: controller.notecontroller,
                                  decoration: InputDecoration(
                                      hintText:
                                          "Example: Bell the ring when reached",
                                      border: InputBorder.none,
                                      isDense: true),
                                ),
                              ),
                            ),
                          ),
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
                              "Payment Method",
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
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: (controller.paymentMethod.value ==
                                        "Cash On Delivery")
                                    ? 8
                                    : 1,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                              value: "Cash On Delivery",
                                              groupValue: controller
                                                  .paymentMethod.value,
                                              onChanged: (value) {
                                                controller
                                                    .handleRadioButtonPayment(
                                                        value);
                                              },
                                              activeColor: Colors.teal),
                                          Text(
                                            "Cash On Delivery",
                                            style: TextStyle(
                                                fontSize: screenWidth / 25),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: screenWidth / 15,
                                            child: Image.asset(
                                                "assets/icons/cod.png")),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: (controller.paymentMethod.value ==
                                        "Online Payment")
                                    ? 8
                                    : 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                            value: "Online Payment",
                                            groupValue:
                                                controller.paymentMethod.value,
                                            onChanged: (value) {
                                              controller
                                                  .handleRadioButtonPayment(
                                                      value);
                                            },
                                            activeColor: Colors.teal),
                                        Text(
                                          "Online Payment",
                                          style: TextStyle(
                                              fontSize: screenWidth / 25),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          width: screenWidth / 12,
                                          child: Image.asset(
                                              "assets/icons/fpx.png")),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
                child: GetBuilder<ServicesMachineDetailsController>(
                    builder: (controller) {
                  return MaterialButton(
                    onPressed: () {
                      controller.placeorder(date);
                    },
                    child: GetBuilder<ServicesMachineDetailsController>(
                        builder: (controller) {
                      return Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Place Order - RM",
                              style: TextStyle(fontSize: screenWidth / 20),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              controller.totalPrice.value.toStringAsFixed(2),
                              style: TextStyle(fontSize: screenWidth / 20),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.add_shopping_cart),
                            )
                          ],
                        ),
                      );
                    }),
                  );
                }),
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
