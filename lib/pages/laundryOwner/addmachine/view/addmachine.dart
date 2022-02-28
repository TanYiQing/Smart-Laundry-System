import 'package:final_year_project/pages/laundryOwner/addmachine/controller/addmachine_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMachinePageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Add Machine",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Which machine do you want to add?",
                        style: TextStyle(fontSize: screenWidth / 25),
                      )),
                ),
                GetBuilder<AddMachineController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/addwashingmachinelaundry",
                          arguments: controller.laundry);
                    },
                    child: Container(
                      height: screenHeight / 5,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          width: screenWidth / 3,
                                          child: Image.asset(
                                              "assets/images/washingmachine.png")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Washing Machine",
                                          style: TextStyle(
                                              fontSize: screenWidth / 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                GetBuilder<AddMachineController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/adddrywashingmachinelaundry",
                          arguments: controller.laundry);
                    },
                    child: Container(
                      height: screenHeight / 5,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          width: screenWidth / 3,
                                          child: Image.asset(
                                              "assets/images/drywashingmachine.png")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Dry Washing Machine",
                                          style: TextStyle(
                                              fontSize: screenWidth / 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                GetBuilder<AddMachineController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/addironingmachinelaundry",
                          arguments: controller.laundry);
                    },
                    child: Container(
                      height: screenHeight / 5,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          width: screenWidth / 3,
                                          child: Image.asset(
                                              "assets/images/ironingmachine.png")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Ironing Machine",
                                          style: TextStyle(
                                              fontSize: screenWidth / 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          )),
    );
  }
}
