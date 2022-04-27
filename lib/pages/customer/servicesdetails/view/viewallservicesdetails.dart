import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:final_year_project/pages/customer/servicesdetails/tile/machine_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAllServicesDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: GetBuilder<ServicesDetailsController>(builder: (controller) {
          return Text(
            controller.servicesdetailstype.value,
            style: TextStyle(color: Colors.black),
          );
        }),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ServicesDetailsController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  child: Flexible(
                      child: Center(
                          child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: ((screenWidth / screenHeight) / 0.7),
                children: (controller.servicesdetailstype.value ==
                        "Normal Washing Service")
                    ? List.generate(controller.washingmachinelist.length,
                        (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.viewServicesMachineDetails(
                                  index, "Washing Machine");
                            },
                            child: MachineTile(
                                controller.washingmachinelist[index]),
                          ),
                        );
                      })
                    : ((controller.servicesdetailstype.value ==
                            "Dry Washing Service")
                        ? List.generate(controller.drywashingmachinelist.length,
                            (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  controller.viewServicesMachineDetails(
                                      index, "Washing Machine");
                                },
                                child: MachineTile(
                                    controller.drywashingmachinelist[index]),
                              ),
                            );
                          })
                        : List.generate(controller.ironingmachinelist.length,
                            (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  controller.viewServicesMachineDetails(
                                      index, "Washing Machine");
                                },
                                child: MachineTile(
                                    controller.ironingmachinelist[index]),
                              ),
                            );
                          })),
              )))),
            ],
          ),
        );
      }),
    );
  }
}
