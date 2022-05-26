import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPageCustomer extends StatelessWidget {
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
                              GetBuilder<BottomBarController>(
                                  builder: (controller) {
                                return Text(
                                  (controller.userList.length != 0)
                                      ? controller.userList[0].firstName
                                              .toString() +
                                          " " +
                                          controller.userList[0].lastName
                                              .toString()
                                      : "" + "" + "",
                                  style: TextStyle(fontSize: screenWidth / 20),
                                );
                              }),
                              Text(
                                "UID: MYR0000054543121012135",
                                style: TextStyle(fontSize: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: screenWidth / 5,
                                  height: screenHeight / 35,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Edit".tr,
                                            style: TextStyle(
                                                fontSize: screenWidth / 35),
                                          ),
                                          Icon(
                                            Icons.camera_sharp,
                                            size: screenWidth / 25,
                                          )
                                        ],
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
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
                        GetBuilder<BottomBarController>(builder: (controller) {
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
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                  height: screenHeight / 1.5,
                  // color: Colors.black,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/firstname');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("First Name".tr),
                              Row(
                                children: [
                                  GetBuilder<BottomBarController>(
                                      builder: (controller) {
                                    return Text(
                                        (controller.userList.length != 0)
                                            ? controller.userList[0].firstName
                                                .toString()
                                            : "");
                                  }),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/lastname');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Last Name".tr),
                              Row(
                                children: [
                                  GetBuilder<BottomBarController>(
                                      builder: (controller) {
                                    return Text(
                                        (controller.userList.length != 0)
                                            ? controller.userList[0].lastName
                                                .toString()
                                            : "");
                                  }),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/password');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Change Password".tr),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/gender');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gender".tr),
                              Row(
                                children: [
                                  GetBuilder<BottomBarController>(
                                      builder: (controller) {
                                    return Text(
                                        (controller.userList.length != 0)
                                            ? controller.userList[0].gender
                                                .toString()
                                            : "");
                                  }),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('birthday');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Birthday".tr),
                              Row(
                                children: [
                                  GetBuilder<BottomBarController>(
                                      builder: (controller) {
                                    return Text(
                                        (controller.userList.length != 0)
                                            ? controller.userList[0].birthday
                                                .toString()
                                            : "");
                                  }),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/phone');
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Phone".tr),
                              Row(
                                children: [
                                  GetBuilder<BottomBarController>(
                                      builder: (controller) {
                                    return Text(
                                        (controller.userList.length != 0)
                                            ? controller.userList[0].phone
                                                .toString()
                                            : "");
                                  }),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email".tr),
                            Row(
                              children: [
                                GetBuilder<BottomBarController>(
                                    builder: (controller) {
                                  return Text(controller.user.email.toString());
                                }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
