import 'package:final_year_project/pages/customer/bottombar/branch/ongoingorder/tile/ongoingorder_tile.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final controller = Get.lazyPut<BottomBarController>(() => BottomBarController(), fenix: true);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<BottomBarController>(builder: (controller) {
          return SingleChildScrollView(
            child: Center(
                child: Column(
              children: [
                Container(
                  height: screenHeight / 4.5,
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
                      height: screenHeight / 5,
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
                                      image: AssetImage(
                                          "assets/images/people.jpg")),
                                  shape: BoxShape.circle)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GetBuilder<BottomBarController>(
                                    builder: (controller) {
                                  return Text(
                                    controller.user.fname.toString() +
                                        " " +
                                        controller.user.lname.toString(),
                                    style:
                                        TextStyle(fontSize: screenWidth / 20),
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
                          GetBuilder<BottomBarController>(
                              builder: (controller) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed("/location",
                                      arguments: controller.user);
                                },
                                child: Container(
                                  height: screenHeight / 12,
                                  width: screenWidth / 12,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(0, 194, 203, 1)),
                                  child: Icon(
                                    Icons.location_on,
                                    size: screenWidth / 20,
                                  ),
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                  "/setting",
                                );
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
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: screenHeight / 15,
                          margin: EdgeInsets.only(
                              left: screenWidth / 20, right: screenWidth / 20),
                          child: Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed("/search");
                                },
                                child: TextField(
                                  onTap: () {
                                    Get.toNamed("/search");
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.search)),
                                ),
                              ),
                            ),
                          )),
                    )
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Services".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: screenWidth / 5,
                          height: screenHeight / 35,
                          child: MaterialButton(
                            onPressed: () {
                              Get.toNamed("/services");
                            },
                            child: Container(
                              child: Text(
                                "View All".tr,
                                style: TextStyle(fontSize: screenWidth / 35),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(-1.0, -4.0),
                                  end: Alignment(1.0, 4.0),
                                  colors: [
                                    Color.fromRGBO(0, 194, 203, 1),
                                    Colors.white
                                  ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/normalwash",
                                    arguments: "Washing Machine");
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: screenWidth / 10,
                                              child: Image.asset(
                                                  "assets/icons/washing-machine.png")),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Normal Wash".tr,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/normalwashandironing",
                                    arguments:
                                        "Washing Machine and Ironing Machine");
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: screenWidth / 10,
                                              child: Image.asset(
                                                  "assets/icons/normalwashironing.png")),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Normal Wash,Ironing".tr,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/drywash",
                                    arguments: "Dry Washing Machine");
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: screenWidth / 10,
                                              child: Image.asset(
                                                  "assets/icons/drying-machine.png")),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Dry Wash".tr,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/drywashandironing",
                                    arguments:
                                        "Dry Washing Machine and Ironing Machine");
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: screenWidth / 10,
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                      "assets/icons/drying-machine.png"),
                                                  Image.asset(
                                                      "assets/icons/drywash.png")
                                                ],
                                              )),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Dry Wash,Ironing".tr,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/ironing",
                                    arguments: "Ironing Machine");
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: screenWidth / 10,
                                              child: Image.asset(
                                                  "assets/icons/iron.png")),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "Ironing".tr,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: screenHeight / 8,
                                  width: screenWidth / 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                            height: screenWidth / 10,
                                            child: Image.asset(
                                                "assets/icons/comingsoon.png")),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Coming Soon".tr,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Active Order(s)".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: screenWidth / 5,
                          height: screenHeight / 35,
                          child: MaterialButton(
                            onPressed: () {
                              controller.viewAllOnGoingOrder();
                            },
                            child: Container(
                              child: Text(
                                "View All".tr,
                                style: TextStyle(fontSize: screenWidth / 35),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(-1.0, -4.0),
                                  end: Alignment(1.0, 4.0),
                                  colors: [
                                    Color.fromRGBO(0, 194, 203, 1),
                                    Colors.white
                                  ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ]),
                ),
                (controller.onGoingOrderList.length != 0)
                    ? Container(
                        height: screenWidth / 1.8,
                        child: Center(
                            child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 1,
                          childAspectRatio:
                              ((screenWidth / screenHeight) / 0.26),
                          children: List.generate(1, (index) {
                            return OnGoingOrderTile(
                                controller.onGoingOrderList[index],index);
                          }),
                        )),
                      )
                    : Container(
                        height: screenHeight / 3,
                        width: screenWidth / 2,
                        child: Image.asset("assets/icons/noorder.png"),
                      ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     color: Colors.black,
                //     height: screenHeight / 4,
                //     // child: GridView.count(
                //     //   crossAxisCount: 4,
                //     //   children: [],
                //     // ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Laundry Near You".tr,
                          style: TextStyle(
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: screenWidth / 5,
                          height: screenHeight / 35,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Container(
                              child: Text(
                                "View All".tr,
                                style: TextStyle(fontSize: screenWidth / 35),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(-1.0, -4.0),
                                  end: Alignment(1.0, 4.0),
                                  colors: [
                                    Color.fromRGBO(0, 194, 203, 1),
                                    Colors.white
                                  ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    height: screenHeight / 4,
                    // child: GridView.count(
                    //   crossAxisCount: 4,
                    //   children: [],
                    // ),
                  ),
                ),
              ],
            )),
          );
        }),
      ),
    );
  }
}
