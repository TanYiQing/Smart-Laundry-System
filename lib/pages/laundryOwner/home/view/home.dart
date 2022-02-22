import 'package:final_year_project/pages/laundryOwner/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Container(
                height: screenHeight / 6,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color.fromRGBO(0, 194, 203, 1),
                            Colors.white
                          ]),
                    ),
                    width: screenWidth,
                    height: screenHeight / 6,
                  ),
                  Positioned(
                    left: screenWidth / 20,
                    child: Row(
                      children: [
                        Container(
                            height: screenHeight / 6,
                            width: screenWidth / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/people.jpg")),
                                shape: BoxShape.circle)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GetBuilder<HomeLaundryController>(
                                  builder: (controller) {
                                return Text(
                                  controller.user.fname.toString() +
                                      " " +
                                      controller.user.lname.toString(),
                                  style: TextStyle(fontSize: screenWidth / 20),
                                );
                              }),
                              Text(
                                "UID: MYR0000054543121012135",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: screenWidth / 20,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/notification");
                            },
                            child: Container(
                              height: screenHeight / 12,
                              width: screenWidth / 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(0, 194, 203, 1)),
                              child: Icon(
                                Icons.notifications_active,
                                size: screenWidth / 20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/setting");
                            },
                            child: Container(
                              height: screenHeight / 12,
                              width: screenWidth / 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(0, 194, 203, 1)),
                              child: Icon(
                                Icons.settings,
                                size: screenWidth / 20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GetBuilder<HomeLaundryController>(
                              builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed("/accountlaundry",
                                    arguments: controller.user);
                              },
                              child: Container(
                                height: screenHeight / 12,
                                width: screenWidth / 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(0, 194, 203, 1)),
                                child: Icon(
                                  Icons.person,
                                  size: screenWidth / 20,
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                    height: screenHeight / 1.35,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            elevation: 8,
                            child: Container(
                              height: screenHeight / 8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed("/neworderlaundry");
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.my_library_books_outlined,
                                              color: Colors.blue),
                                          Text("New Orders")
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed("/ongoingorderlaundry");
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.assignment_outlined,
                                              color: Colors.blue),
                                          Text("On Going Orders")
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed("/completedorderlaundry");
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.auto_awesome_mosaic,
                                              color: Colors.blue),
                                          Text("Completed Orders")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "My Laundry",
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: screenHeight / 5,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: screenWidth / 1.5,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      elevation: 8,
                                      child: Text("Laundry")),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/mylaundrylaundry");
                                  },
                                  child: Container(
                                      height: double.infinity,
                                      width: screenWidth - (screenWidth / 1.4),
                                      child: Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.arrow_forward_outlined),
                                            Text("View More")
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "My Wallet",
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: screenHeight / 5,
                            width: screenWidth / 1.1,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: screenWidth / 1.5,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      elevation: 8,
                                      child: Text("Laundry")),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/mywalletlaundry");
                                  },
                                  child: Container(
                                      height: double.infinity,
                                      width: screenWidth - (screenWidth / 1.4),
                                      child: Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.arrow_forward_outlined),
                                            Text("View More")
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "My Business",
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: screenHeight / 5,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: screenWidth / 1.5,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      elevation: 8,
                                      child: Text("Laundry")),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/mybusinesslaundry");
                                  },
                                  child: Container(
                                      height: double.infinity,
                                      width: screenWidth - (screenWidth / 1.4),
                                      child: Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.arrow_forward_outlined),
                                            Text("View More")
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Business Report",
                            style: TextStyle(
                                fontSize: screenWidth / 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: screenHeight / 5,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: screenWidth / 1.5,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      elevation: 8,
                                      child: Text("Laundry")),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/businessreportlaundry");
                                  },
                                  child: Container(
                                      height: double.infinity,
                                      width: screenWidth - (screenWidth / 1.4),
                                      child: Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.arrow_forward_outlined),
                                            Text("View More")
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
