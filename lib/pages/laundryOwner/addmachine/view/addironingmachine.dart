// ignore_for_file: unnecessary_statements

import 'package:final_year_project/pages/laundryOwner/addmachine/controller/addmachine_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddIroningMachinePageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Ironing Machine",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/ironingmachine.png"),
              ),
              Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 10,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                                Icons.local_laundry_service),
                                          )),
                                      Text("Machine Details")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Calculation Base",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    GetBuilder<AddMachineController>(
                                        builder: (controller) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: screenWidth / 4,
                                            height: screenHeight / 7,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              elevation: controller
                                                          .selectedPriceBase
                                                          .value ==
                                                      "Per Machine"
                                                  ? 8
                                                  : 1,
                                              child: Column(
                                                children: [
                                                  Radio(
                                                    value: "Per Machine",
                                                    groupValue: controller
                                                        .selectedPriceBase
                                                        .value,
                                                    onChanged: (value) {
                                                      false;
                                                      Get.snackbar(
                                                          "Selection Error",
                                                          "Ironing machine does not support this calculation base.");
                                                    },
                                                    activeColor: Colors.teal,
                                                  ),
                                                  Text(
                                                    "Per Machine",
                                                    style: TextStyle(
                                                        fontSize:
                                                            screenWidth / 30),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Icon(
                                                      Icons
                                                          .local_laundry_service_outlined,
                                                      color: Colors.deepOrange,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth / 4,
                                            height: screenHeight / 7,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              elevation: controller
                                                          .selectedPriceBase
                                                          .value ==
                                                      "Per Cloth"
                                                  ? 8
                                                  : 1,
                                              child: Column(
                                                children: [
                                                  Radio(
                                                    value: "Per Cloth",
                                                    groupValue: controller
                                                        .selectedPriceBase
                                                        .value,
                                                    onChanged: (value) {
                                                      controller
                                                          .handleRadioButton(
                                                              value);
                                                    },
                                                    activeColor: Colors.teal,
                                                  ),
                                                  Text(
                                                    "Per Cloth",
                                                    style: TextStyle(
                                                        fontSize:
                                                            screenWidth / 30),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Icon(Icons.checkroom,
                                                        color:
                                                            Colors.blue[400]),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Minimum Weight(kg)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GetBuilder<AddMachineController>(
                                          builder: (controller) {
                                        return Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickremovebutton(1);
                                              },
                                              child: Container(
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Container(
                                                width: screenWidth / 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0,
                                                          right: 8.0),
                                                  child: Container(
                                                    child: TextField(
                                                      controller: controller
                                                          .minimumweightcontroller,
                                                      textAlign:
                                                          TextAlign.right,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense: true),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickaddbutton(1);
                                              },
                                              child: Container(
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Maximum Weight(kg)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GetBuilder<AddMachineController>(
                                          builder: (controller) {
                                        return Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickremovebutton(2);
                                              },
                                              child: Container(
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Container(
                                                width: screenWidth / 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0,
                                                          right: 8.0),
                                                  child: Container(
                                                    child: TextField(
                                                      controller: controller
                                                          .maximumweightcontroller,
                                                      textAlign:
                                                          TextAlign.right,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense: true),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickaddbutton(2);
                                              },
                                              child: Container(
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Price(RM)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GetBuilder<AddMachineController>(
                                          builder: (controller) {
                                        return Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickremovebutton(3);
                                              },
                                              child: Container(
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Container(
                                                width: screenWidth / 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0,
                                                          right: 8.0),
                                                  child: Container(
                                                    child: TextField(
                                                      controller: controller
                                                          .pricecontroller,
                                                      textAlign:
                                                          TextAlign.right,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense: true),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.clickaddbutton(3);
                                              },
                                              child: Container(
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 8.0, right: 8.0),
                                        child: Container(
                                          child:
                                              GetBuilder<AddMachineController>(
                                                  builder: (controller) {
                                            return MaterialButton(
                                              onPressed: () {
                                                controller.addMachine(
                                                    "ironingMachine");
                                              },
                                              child: Container(
                                                child: Text(
                                                  "Publish",
                                                  style: TextStyle(
                                                      fontSize:
                                                          screenWidth / 30),
                                                ),
                                              ),
                                            );
                                          }),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          width: screenWidth / 3.5,
                                          height: screenHeight / 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
