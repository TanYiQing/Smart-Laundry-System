import 'package:final_year_project/pages/customer/setting/controller/settingcontroller.dart';
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
            "Settings",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
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
                        Icon(Icons.language, color: Colors.blue),
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
                        Icon(Icons.help_center, color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Help Center"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // GetX<AccountController>(
                        //     init: AccountController(),
                        //     builder: (controller) {
                        //       controller.changeLanguage();
                        //       return Text(controller.language.value);
                        //     }),
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
                        Icon(Icons.local_laundry_service_outlined,
                            color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("About Us"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // GetX<AccountController>(
                        //     init: AccountController(),
                        //     builder: (controller) {
                        //       controller.changeLanguage();
                        //       return Text(controller.language.value);
                        //     }),
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
                        Icon(Icons.my_library_books_outlined,
                            color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Terms and Conditions"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // GetX<AccountController>(
                        //     init: AccountController(),
                        //     builder: (controller) {
                        //       controller.changeLanguage();
                        //       return Text(controller.language.value);
                        //     }),
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
            GestureDetector(
                onTap: () {
                  // AccountController().clickLogout();
                },
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                ))
          ],
        )),
      ),
    );
  }
}
