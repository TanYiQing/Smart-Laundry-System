import 'package:final_year_project/models/availability.dart';
import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ServicesDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var now = new DateTime.now();
    var date = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenWidth,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(-1.0, -4.0),
                      end: Alignment(1.0, 4.0),
                      colors: [Color.fromRGBO(0, 194, 203, 1), Colors.white]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(150))),
            ),
            GetBuilder<ServicesDetailsController>(builder: (controller) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 60),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(date.toString()),
                                Text(
                                  controller.laundry.laundryName,
                                  style: TextStyle(
                                      fontSize: screenWidth / 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  controller.laundry.laundryCity,
                                  style: TextStyle(
                                    fontSize: screenWidth / 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              child: Card(
                                  color: Colors.blue[100],
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      Icon(
                                        Icons.local_laundry_service_outlined,
                                        size: screenWidth / 10,
                                        color: Colors.teal,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("TOTAL MACHINE",
                                            style: TextStyle(
                                                fontSize: screenWidth / 15,
                                                color: Colors.teal)),
                                      ),
                                      Text(
                                        controller.machinelist.length
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: screenWidth / 15,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ]),
                                  )),
                            ),
                          );
                        }),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Colors.green[100],
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.water_sharp,
                                            size: screenWidth / 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Washing Machine"),
                                          ),
                                          Text(
                                              controller
                                                  .washingmachinelist.length
                                                  .toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Colors.purple[100],
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.dry_cleaning_outlined,
                                            size: screenWidth / 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Dry Washing Machine"),
                                          ),
                                          Text(
                                              controller
                                                  .drywashingmachinelist.length
                                                  .toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Colors.blue[200],
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.iron_outlined,
                                            size: screenWidth / 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Ironing Machine"),
                                          ),
                                          Text(
                                              controller
                                                  .ironingmachinelist.length
                                                  .toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return SfCircularChart(
                                palette: <Color>[
                                  Color.fromRGBO(187, 222, 251, 1),
                                  Color.fromRGBO(200, 230, 201, 1),
                                  Color.fromRGBO(225, 190, 231, 1),
                                  Color.fromRGBO(144, 202, 249, 1)
                                ],
                                title: ChartTitle(text: 'Occupied Level(%)'),
                                legend: Legend(
                                    isVisible: true,
                                    overflowMode: LegendItemOverflowMode.scroll,
                                    position: LegendPosition.bottom),
                                tooltipBehavior: controller.tooltipBehavior,
                                series: <CircularSeries>[
                                  RadialBarSeries<Availability, String>(
                                      dataSource:
                                          controller.availabilityAllList,
                                      xValueMapper: (Availability data, _) =>
                                          data.machineType,
                                      yValueMapper: (Availability data, _) =>
                                          int.tryParse(data.percentage??""),
                                      dataLabelSettings:
                                          DataLabelSettings(isVisible: true),
                                      enableTooltip: true,
                                      maximumValue: 100)
                                ],
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    ));
  }
}
