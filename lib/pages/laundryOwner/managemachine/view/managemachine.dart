import 'package:final_year_project/pages/laundryOwner/managemachine/controller/managemachine_controller.dart';
import 'package:final_year_project/pages/laundryOwner/managemachine/tile/machine_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageMachinePageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Manage Machine".tr,
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            actions: [
              GetBuilder<ManageMachineController>(builder: (controller) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Get.toNamed("/addmachinelaundry",
                        arguments: controller.laundry);
                  },
                );
              })
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GetBuilder<ManageMachineController>(
                        builder: (controller) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.selectFilter("All");
                            },
                            child: Card(
                                elevation:
                                    (controller.choose1.value == true) ? 10 : 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("All".tr),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectFilter("Washing Machine");
                            },
                            child: Card(
                                elevation:
                                    (controller.choose2.value == true) ? 10 : 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Washing Machine".tr),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectFilter("Dry Washing Machine");
                            },
                            child: Card(
                                elevation:
                                    (controller.choose3.value == true) ? 10 : 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Dry Washing Machine".tr),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectFilter("Ironing Machine");
                            },
                            child: Card(
                                elevation:
                                    (controller.choose4.value == true) ? 10 : 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Ironing Machine".tr),
                                )),
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ),
              GetX<ManageMachineController>(builder: (_) {
                return Container(
                    child: Flexible(
                        child: Center(
                            child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: ((screenWidth / screenHeight) / 0.15),
                  children: List.generate(_.machinelist.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          // _.viewLaundryDetails(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MachineTile(_.machinelist[index]),
                        ));
                  }),
                ))));
              }),
            ],
          )),
    );
  }
}
