import 'package:final_year_project/models/gmapLocation.dart';
import 'package:final_year_project/pages/customer/addlocation/controller/addlocation_controller.dart';
import 'package:final_year_project/pages/customer/map/view/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Add New Location".tr,
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            actions: [
              GetBuilder<AddLocationController>(builder: (controller) {
                return GestureDetector(
                  onTap: () {
                    controller.getUserCurrentLoc();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/location.png",
                      width: screenWidth / 15,
                    ),
                  ),
                );
              }),
              GetBuilder<AddLocationController>(builder: (controller) {
                return GestureDetector(
                  onTap: () async {
                    GMapLocation? gmaplocation =
                        await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MapPage(),
                      ),
                    );
                    controller.address1controller.text =
                        (gmaplocation?.locationNumber ?? "") +
                            (", ") +
                            (gmaplocation?.subLocality ?? "");
                    controller.zipcontroller.text =
                        (gmaplocation?.postalCode ?? "");
                    controller.citycontroller.text =
                        (gmaplocation?.locality ?? "");
                    controller.statecontroller.text =
                        (gmaplocation?.administrativeArea ?? "");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/map.png",
                      width: screenWidth / 15,
                    ),
                  ),
                );
              })
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Name".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddLocationController>(
                            builder: (controller) {
                          return TextField(
                            controller: controller.namecontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Contact Number".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.contactcontroller,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Address 1".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.address1controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Address 2".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Optional".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.address2controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "ZIP Code".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.zipcontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "City".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.citycontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "State".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: TextField(
                            controller: controller.statecontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "Location Type".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 25),
                        ),
                        Text(
                          " Required".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 35, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                GetBuilder<AddLocationController>(builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
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
                                controller.addressType.value == "Home" ? 8 : 1,
                            child: Column(
                              children: [
                                Radio(
                                  value: "Home",
                                  groupValue: controller.addressType.value,
                                  onChanged: (value) {
                                    controller.handleRadioButton(value);
                                  },
                                  activeColor: Colors.teal,
                                ),
                                Text(
                                  "Home Address".tr,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "8am-10pm",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: screenWidth / 10,
                                        child: Image.asset(
                                            "assets/icons/house.png")))
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
                            elevation: controller.addressType.value == "Office"
                                ? 8
                                : 1,
                            child: Column(
                              children: [
                                Radio(
                                  value: "Office",
                                  groupValue: controller.addressType.value,
                                  onChanged: (value) {
                                    controller.handleRadioButton(value);
                                  },
                                  activeColor: Colors.teal,
                                ),
                                Text(
                                  "Office Address".tr,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "8am-5pm",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: screenWidth / 10,
                                        child: Image.asset(
                                            "assets/icons/office-building.png")))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                  child: Container(
                    child:
                        GetBuilder<AddLocationController>(builder: (controller) {
                      return MaterialButton(
                        onPressed: () {
                          controller.addAddress();
                        },
                        child: Container(
                          child: Text(
                            "Save".tr,
                            style: TextStyle(fontSize: screenWidth / 30),
                          ),
                        ),
                      );
                    }),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(-1.0, -4.0),
                            end: Alignment(1.0, 4.0),
                            colors: [
                              Color.fromRGBO(0, 194, 203, 1),
                              Colors.white
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: screenWidth / 3.5,
                    height: screenHeight / 20,
                  ),
                ),
              ),
              ],
            ),
          ),
        ));
  }
}
