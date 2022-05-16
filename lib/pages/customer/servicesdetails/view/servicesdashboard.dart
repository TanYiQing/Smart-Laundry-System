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
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                          begin: Alignment(-1.0, -4.0),
                                          end: Alignment(1.0, 4.0),
                                          colors: [Colors.blue, Colors.white]),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Image.asset(
                                          "assets/icons/washing.png",
                                          height: screenWidth / 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("TOTAL MACHINE",
                                              style: TextStyle(
                                                fontSize: screenWidth / 15,
                                              )),
                                        ),
                                        Text(
                                          controller.machinelist.length
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: screenWidth / 15,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ]),
                                    ),
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
                                    elevation: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [
                                              Colors.greenAccent,
                                              Colors.white
                                            ]),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                "assets/icons/washing-machine.png",
                                                height: screenWidth / 15),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [Colors.red, Colors.white]),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                "assets/icons/drying-machine.png",
                                                height: screenWidth / 15),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child:
                                                  Text("Dry Washing Machine"),
                                            ),
                                            Text(
                                                controller.drywashingmachinelist
                                                    .length
                                                    .toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [
                                              Colors.amber,
                                              Colors.white
                                            ]),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/icons/iron.png",
                                              height: screenWidth / 15,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment(-1.0, -4.0),
                                      end: Alignment(1.0, 4.0),
                                      colors: [Colors.grey, Colors.white]),
                                  borderRadius: BorderRadius.circular(15)),
                              child: GetBuilder<ServicesDetailsController>(
                                  builder: (controller) {
                                return SfCircularChart(
                                  palette: <Color>[
                                    Colors.blue,
                                    Colors.greenAccent,
                                    Colors.red,
                                    Colors.amber
                                  ],
                                  title: ChartTitle(
                                      text: 'Occupied Level(%)',
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  legend: Legend(
                                      isVisible: true,
                                      overflowMode:
                                          LegendItemOverflowMode.scroll,
                                      position: LegendPosition.bottom),
                                  tooltipBehavior: controller.tooltipBehavior,
                                  series: <CircularSeries>[
                                    RadialBarSeries<Availability, String>(
                                        dataSource:
                                            controller.availabilityAllList,
                                        xValueMapper: (Availability data, _) =>
                                            data.machineType,
                                        yValueMapper: (Availability data, _) =>
                                            int.tryParse(
                                                data.percentage ?? "0"),
                                        dataLabelSettings:
                                            DataLabelSettings(isVisible: true),
                                        enableTooltip: true,
                                        maximumValue: 100,
                                        gap: "4",
                                        cornerStyle: CornerStyle.bothCurve,
                                        trackColor: Colors.white)
                                  ],
                                );
                              }),
                            ),
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
