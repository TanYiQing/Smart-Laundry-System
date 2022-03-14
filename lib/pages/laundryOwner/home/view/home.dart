import 'package:final_year_project/pages/laundryOwner/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
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
                                          Image.asset(
                                            "assets/icons/new-order.png",
                                            height: screenHeight / 20,
                                            width: screenWidth / 20,
                                          ),
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
                                          Image.asset(
                                            "assets/icons/ongoing-order.png",
                                            height: screenHeight / 20,
                                            width: screenWidth / 20,
                                          ),
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
                                          Image.asset(
                                            "assets/icons/completed-order.png",
                                            height: screenHeight / 20,
                                            width: screenWidth / 20,
                                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 8,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                              begin: Alignment(-1.0, -4.0),
                                              end: Alignment(1.0, 4.0),
                                              colors: [
                                                Color.fromRGBO(
                                                    173, 236, 255, 1),
                                                Colors.white
                                              ]),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    "assets/icons/validation.png",
                                                    height: screenWidth / 12,
                                                  ),
                                                ),
                                                Text(
                                                  "80%",
                                                  style: TextStyle(
                                                      fontSize:
                                                          screenWidth / 10),
                                                ),
                                                Text(" Approved",
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize:
                                                            screenWidth / 20,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FAProgressBar(
                                                currentValue: 80,
                                                displayText: '%',
                                                backgroundColor: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                                GetBuilder<HomeLaundryController>(
                                    builder: (controller) {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.toNamed("/mylaundrylaundry",
                                          arguments: controller.user);
                                    },
                                    child: Container(
                                        height: double.infinity,
                                        width:
                                            screenWidth - (screenWidth / 1.4),
                                        child: Card(
                                          elevation: 8,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(60)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                  Icons.arrow_forward_outlined),
                                              Text("View More")
                                            ],
                                          ),
                                        )),
                                  );
                                }),
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
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.0, -4.0),
                                                end: Alignment(1.0, 4.0),
                                                colors: [
                                                  Color.fromRGBO(
                                                      255, 199, 251, 1),
                                                  Colors.white
                                                ]),
                                          ),
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Image.asset(
                                                        "assets/icons/wallet.png",
                                                        width: screenWidth / 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      "RM1501.20",
                                                      style: TextStyle(
                                                          fontSize:
                                                              screenWidth / 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                  right: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Icon(
                                                        Icons.remove_red_eye),
                                                  ))
                                            ],
                                          ))),
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
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.0, -4.0),
                                                end: Alignment(1.0, 4.0),
                                                colors: [
                                                  Color.fromRGBO(
                                                      255, 250, 201, 1),
                                                  Colors.white
                                                ]),
                                          ),
                                          child: Text("Laundry"))),
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
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.0, -4.0),
                                                end: Alignment(1.0, 4.0),
                                                colors: [
                                                  Color.fromRGBO(
                                                      233, 201, 255, 1),
                                                  Colors.white
                                                ]),
                                          ),
                                          child: Text("Laundry"))),
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
