import 'package:final_year_project/pages/laundryOwner/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPageLaundry extends StatelessWidget {
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
                              GetBuilder<AccountLaundryController>(
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
                                            "Edit",
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
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/settinglaundry");
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
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/homelaundry");
                            },
                            child: Container(
                              height: screenHeight / 12,
                              width: screenWidth / 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(0, 194, 203, 1)),
                              child: Icon(
                                Icons.home,
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
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("First Name"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.fname.toString());
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
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Last Name"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.lname.toString());
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
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bio"),
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
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Change Password"),
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
                      Divider(
                        thickness: 5,
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gender"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.lname.toString());
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
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Birthday"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.lname.toString());
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
                      Divider(
                        thickness: 5,
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Phone"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.lname.toString());
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
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email"),
                            Row(
                              children: [
                                GetBuilder<AccountLaundryController>(
                                    builder: (controller) {
                                  return Text(controller.user.email.toString());
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
                    ],
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
