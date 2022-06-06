import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachines_controller.dart';
import 'package:final_year_project/pages/laundryOwner/home/controller/home_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/controller/mywallet_controller.dart';
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
        body: Center(
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
                        colors: [Color.fromRGBO(0, 194, 203, 1), Colors.white]),
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
                                (controller.userList.length != 0)
                                    ? controller.userList[0].firstName
                                            .toString() +
                                        " " +
                                        controller.userList[0].lastName
                                            .toString()
                                    : "",
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
                              Get.delete<HomeLaundryController>();
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
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "My Orders".tr,
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
                                        Text("New Orders".tr)
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
                                        Text("On Going Orders".tr)
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
                                        Text("Completed Orders".tr)
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
                          "Basic Functions".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight / 4.5,
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screenWidth / 2.2,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        elevation: 8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 8.0),
                                                          child: Image.asset(
                                                            "assets/icons/washing.png",
                                                            height:
                                                                screenWidth /
                                                                    20,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "Manage Laundry".tr,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    screenWidth /
                                                                        20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GetBuilder<
                                                              HomeLaundryController>(
                                                          builder:
                                                              (controller) {
                                                        return Text(
                                                          controller.approval
                                                                  .value
                                                                  .toString() +
                                                              "%",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  screenWidth /
                                                                      15),
                                                        );
                                                      }),
                                                      Text(" Approved".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize:
                                                                  screenWidth /
                                                                      25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: GetBuilder<
                                                            HomeLaundryController>(
                                                        builder: (controller) {
                                                      return FAProgressBar(
                                                        currentValue: int.parse(
                                                            controller.approval
                                                                .value),
                                                        displayText: '%',
                                                        backgroundColor:
                                                            Colors.grey,
                                                        size: 12,
                                                        animatedDuration:
                                                            Duration(
                                                                seconds: 3),
                                                        progressColor: (controller
                                                                    .approval
                                                                    .value ==
                                                                "100")
                                                            ? Colors.green
                                                            : Colors
                                                                .amberAccent,
                                                      );
                                                    }),
                                                  )
                                                ],
                                              ),
                                              Positioned(
                                                bottom: 10,
                                                right: 10,
                                                child: GetBuilder<
                                                        HomeLaundryController>(
                                                    builder: (controller) {
                                                  return Container(
                                                    width: screenWidth / 4.5,
                                                    height: screenHeight / 30,
                                                    child: Card(
                                                      elevation: 10,
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          Get.toNamed(
                                                              "/mylaundrylaundry",
                                                              arguments:
                                                                  controller
                                                                      .user);
                                                        },
                                                        child: Text(
                                                          "View More".tr,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  screenWidth /
                                                                      45),
                                                        ),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                  );
                                                }),
                                              ),
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
                            child: Container(
                              height: screenHeight / 4.5,
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screenWidth / 2.2,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        elevation: 8,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 8.0),
                                                            child: Image.asset(
                                                              "assets/icons/wallet.png",
                                                              height:
                                                                  screenWidth /
                                                                      20,
                                                            ),
                                                          ),
                                                          Text(
                                                            "My Wallet".tr,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    screenWidth /
                                                                        20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          GetBuilder<
                                                                  MyWalletController>(
                                                              builder:
                                                                  (controller) {
                                                            return (controller
                                                                        .ishidden
                                                                        .value ==
                                                                    false)
                                                                ? Text(
                                                                    "RM" +
                                                                        controller.checkWalletAmount(controller
                                                                            .walletvalue
                                                                            .value),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          screenWidth /
                                                                              15,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "-----",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          screenWidth /
                                                                              15,
                                                                    ),
                                                                  );
                                                          }),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Positioned(
                                                    right: 10,
                                                    child: GetBuilder<
                                                            MyWalletController>(
                                                        builder: (controller) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          controller
                                                              .toggleWalletAmount();
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Icon(
                                                            controller.ishidden
                                                                    .value
                                                                ? Icons
                                                                    .visibility
                                                                : Icons
                                                                    .visibility_off,
                                                            size: 15,
                                                          ),
                                                        ),
                                                      );
                                                    })),
                                                Positioned(
                                                  bottom: 10,
                                                  right: 10,
                                                  child: GetBuilder<
                                                          HomeLaundryController>(
                                                      builder: (controller) {
                                                    return Container(
                                                      width: screenWidth / 4.5,
                                                      height: screenHeight / 30,
                                                      child: Card(
                                                        elevation: 10,
                                                        child: MaterialButton(
                                                          onPressed: () {
                                                            Get.toNamed(
                                                                "/mywalletlaundry",
                                                                arguments:
                                                                    controller
                                                                        .user);
                                                          },
                                                          child: Text(
                                                            "View More".tr,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    screenWidth /
                                                                        45),
                                                          ),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                    );
                                                  }),
                                                ),
                                              ],
                                            ))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight / 4.5,
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screenWidth / 2.2,
                                    child: GetBuilder<ErrorMachinesController>(
                                        builder: (controller) {
                                      return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          elevation: 8,
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white,
                                              ),
                                              child: Stack(children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 8.0),
                                                            child: Image.asset(
                                                              "assets/icons/errormachine.png",
                                                              height:
                                                                  screenWidth /
                                                                      20,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              "Error Machines"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      screenWidth /
                                                                          20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                              controller
                                                                  .errorMachines
                                                                  .value
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      screenWidth /
                                                                          10,
                                                                  color: (controller
                                                                              .errorMachines
                                                                              .value
                                                                              .toString() !=
                                                                          "0")
                                                                      ? Colors
                                                                          .red
                                                                      : Colors
                                                                          .green)),
                                                          Text(
                                                            "Error(s) Reported"
                                                                .tr,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Positioned(
                                                  bottom: 10,
                                                  right: 10,
                                                  child: GetBuilder<
                                                          HomeLaundryController>(
                                                      builder: (controller) {
                                                    return Container(
                                                      width: screenWidth / 4.5,
                                                      height: screenHeight / 30,
                                                      child: Card(
                                                        elevation: 10,
                                                        child: MaterialButton(
                                                          onPressed: () {
                                                            Get.toNamed(
                                                                "/errormachines",
                                                                arguments:
                                                                    controller
                                                                        .user);
                                                          },
                                                          child: Text(
                                                            "View More".tr,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    screenWidth /
                                                                        45),
                                                          ),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                    );
                                                  }),
                                                ),
                                              ])));
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight / 4.5,
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: screenWidth / 2.2,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        elevation: 8,
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                            child: Stack(children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 8.0),
                                                          child: Image.asset(
                                                            "assets/icons/report.png",
                                                            height:
                                                                screenWidth /
                                                                    20,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            "Business Report"
                                                                .tr,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    screenWidth /
                                                                        20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                bottom: 10,
                                                right: 10,
                                                child: GetBuilder<
                                                        HomeLaundryController>(
                                                    builder: (controller) {
                                                  return Container(
                                                    width: screenWidth / 4.5,
                                                    height: screenHeight / 30,
                                                    child: Card(
                                                      elevation: 10,
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          Get.toNamed(
                                                              "/businessreportlaundry",
                                                              arguments:
                                                                  controller
                                                                      .user);
                                                        },
                                                        child: Text(
                                                          "View More".tr,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  screenWidth /
                                                                      45),
                                                        ),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                  );
                                                }),
                                              ),
                                            ]))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        )),
      ),
    );
  }
}
