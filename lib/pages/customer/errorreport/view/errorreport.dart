import 'package:final_year_project/pages/customer/errorreport/controller/errorreport_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ErrorReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.yellow,
          title: Text("Error Report"),
        ),
        body: SingleChildScrollView(
          child: GetBuilder<ErrorReportController>(builder: (controller) {
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      height: screenWidth / 2,
                      child: Lottie.asset("assets/lottie/error.json")),
                  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.namecontroller,
                          decoration: InputDecoration(
                              hintText: "Name (Required)",
                              border: InputBorder.none,
                              isDense: true),
                        ),
                      )),
                  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.phonecontroller,
                          decoration: InputDecoration(
                              hintText: "Phone (Required)",
                              border: InputBorder.none,
                              isDense: true),
                        ),
                      )),
                  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.emailcontroller,
                          decoration: InputDecoration(
                              hintText: "Email (Required)",
                              border: InputBorder.none,
                              isDense: true),
                        ),
                      )),
                  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.machineIDcontroller,
                          decoration: InputDecoration(
                              hintText: "Machine ID (Required)",
                              border: InputBorder.none,
                              isDense: true),
                        ),
                      )),
                  Container(
                    width: double.infinity,
                    child: Card(
                        elevation: 10,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GetBuilder<ErrorReportController>(
                                builder: (controller) {
                              return DropdownButton(
                                  underline: DropdownButtonHideUnderline(
                                      child: Container()),
                                  value: controller.selectMachineType,
                                  isExpanded: true,
                                  hint: Text("Machine Type (Required)"),
                                  isDense: true,
                                  style: TextStyle(
                                      fontSize: screenWidth / 20,
                                      color: Colors.red),
                                  items: [
                                    for (var data in controller.machineType)
                                      DropdownMenuItem(
                                        child: new Text(
                                          data,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        value: data,
                                      )
                                  ],
                                  onChanged: (value) {
                                    controller.chooseMachineType(value);
                                  });
                            }))),
                  ),
                  Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.errorcontroller,
                          decoration: InputDecoration(
                              hintText: "What error that you faced? (Required)",
                              border: InputBorder.none,
                              isDense: true),
                        ),
                      )),
                  GetBuilder<ErrorReportController>(builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            controller.sendReport();
                          },
                          child: Container(
                            child: Card(
                                elevation: 10,
                                color: Colors.yellow,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text("Report")),
                                )),
                          )),
                    );
                  }),
                ],
              ),
            ));
          }),
        ),
      ),
    );
  }
}
