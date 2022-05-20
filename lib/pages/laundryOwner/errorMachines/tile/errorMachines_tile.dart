import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/models/errorMachine.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachinesDetails_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/controller/mylaundry_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ErrorMachinesTile extends StatelessWidget {
  final ErrorMachine errorMachines;
  ErrorMachinesTile(this.errorMachines);
  final mylaundryController = Get.put(MyLaundryController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Error ID #" + errorMachines.errorId.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          title: "Error Resolved?",
                          content: Container(
                              height: 50,
                              child: Lottie.asset(
                                  "assets/lottie/errorresolved.json")),
                          cancel: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Cancel"),
                              ),
                            ),
                          ),
                          confirm: GetBuilder<ErrorMachinesDetailsController>(
                              builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                print("Delete");
                                // print(this.address.addressID);
                                controller
                                    .resolvedError(this.errorMachines.errorId);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Resolved"),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Resolved"),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reporter Phone"),
                    Text(errorMachines.phone.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reporter Email"),
                    Text(errorMachines.email.toString()),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Machine ID #" + errorMachines.machineId.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Machine Type"),
                    Text(errorMachines.machineType.toString()),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Error:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(errorMachines.error.toString()),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
