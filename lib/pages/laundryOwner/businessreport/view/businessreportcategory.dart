import 'package:date_time_picker/date_time_picker.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/controller/businessreport_controller.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/controller/report_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessReportCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Business Report".tr,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GetBuilder<ReportController>(builder: (controller) {
          return Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Income Report".tr,
                            style: TextStyle(fontSize: screenWidth / 22),
                          ),
                          GestureDetector(
                              onTap: () {
                                controller.tapCategory(1);
                              },
                              child: Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.show1.value,
                  child: Container(
                    width: double.infinity,
                    height: screenWidth / 2.4,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Date Range".tr,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.startincomedate,
                                      dateHintText: "Start Date".tr,
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                                Icon(Icons.remove),
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.endincomedate,
                                      dateHintText: "End Date".tr,
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.generateReport("income");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Card(
                                      elevation: 10,
                                      color: Colors.teal[200],
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text("Generate Report".tr)),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Error Machine Report".tr,
                            style: TextStyle(fontSize: screenWidth / 22),
                          ),
                          GestureDetector(
                              onTap: () {
                                controller.tapCategory(2);
                              },
                              child: Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.show2.value,
                  child: Container(
                    width: double.infinity,
                    height: screenWidth / 2.4,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Date Range".tr,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.starterrordate,
                                      dateHintText: "Start Date".tr,
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                                Icon(Icons.remove),
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.enderrordate,
                                      dateHintText: "End Date".tr,
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.generateReport("error");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Card(
                                      elevation: 10,
                                      color: Colors.teal[200],
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text("Generate Report".tr)),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Customer Report".tr,
                            style: TextStyle(fontSize: screenWidth / 22),
                          ),
                          GestureDetector(
                              onTap: () {
                                controller.tapCategory(3);
                              },
                              child: Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.show3.value,
                  child: Container(
                    width: double.infinity,
                    height: screenWidth / 2.4,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Date Range".tr,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.startcustomerdate,
                                      dateHintText: "Start Date",
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                                Icon(Icons.remove),
                                Container(
                                  width: screenWidth / 2.5,
                                  child: DateTimePicker(
                                      controller: controller.endcustomerdate,
                                      dateHintText: "End Date".tr,
                                      icon: Icon(Icons.date_range_outlined),
                                      type: DateTimePickerType.date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100)),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.generateReport("customer");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Card(
                                      elevation: 10,
                                      color: Colors.teal[200],
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Text("Generate Report".tr)),
                                      )),
                                ),
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
          ));
        }),
      ),
    );
  }
}
