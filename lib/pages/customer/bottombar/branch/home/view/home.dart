import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
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
                                    image:
                                        AssetImage("assets/images/people.jpg")),
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
                              Get.toNamed("/location");
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/setting",);
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
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Services",
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
                              "View All",
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
                  child: Container(
                    child: Row(
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/normalwash.png")),
                                  Text(
                                    "Normal Wash",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/normalwashiron.png")),
                                  Text(
                                    "Normal Wash & Ironing",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/drywash.png")),
                                  Text(
                                    "Dry Wash",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/drywashironing.png")),
                                  Text(
                                    "Dry Wash & Ironing",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/ironing.png")),
                                  Text(
                                    "Ironing",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
                              height: screenHeight / 7,
                              width: screenWidth / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight / 15,
                                      child: Image.asset(
                                          "assets/images/comingsoon.png")),
                                  Text(
                                    "Coming Soon",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Active Order(s)",
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
                              "View All",
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Laundry Near You",
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
                              "View All",
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
        ),
      ),
    );
  }
}
