import 'package:final_year_project/pages/mutual/setting/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Settings".tr,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(physics: NeverScrollableScrollPhysics(),
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/icons/language.png",
                              height: screenWidth / 15,
                              width: screenWidth / 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Language".tr),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GetX<SettingController>(
                            init: SettingController(),
                            builder: (controller) {
                              controller.changeLanguage();
                              return Text(controller.language.value);
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
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/icons/question.png",
                              height: screenWidth / 15,
                              width: screenWidth / 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Help Centre".tr),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/aboutus');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/icons/information.png",
                              height: screenWidth / 15,
                              width: screenWidth / 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("About Us".tr),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/language');
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/icons/shield.png",
                              height: screenWidth / 15,
                              width: screenWidth / 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Terms and Conditions".tr),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            // ListTile(
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Icon(Icons.dark_mode, color: Colors.amber),
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Text("Dark Mode".tr),
            //           ),
            //         ],
            //       ),
            //       Obx(() {
            //         return Switch(
            //           onChanged: (value) {}, value: true,
            //           // value: themecontroller.isSwitching.value,
            //           // onChanged: (value) {
            //           //   themecontroller.toggleSwitch();
            //           // }
            //         );
            //       })
            //     ],
            //   ),
            // ),
            GetBuilder<SettingController>(builder: (controller) {
              return GestureDetector(
                  onTap: () {
                    // AccountController().clickLogout();
                    controller.clickLogout();
                  },
                  child: ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.logout, color: Colors.black),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Logout".tr),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            })
          ],
        )),
      ),
    );
  }
}
