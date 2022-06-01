import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachines_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/tile/laundry_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorMachinesPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Error Machines".tr,
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Column(
            children: [
              GetBuilder<ErrorMachinesController>(builder: (controller) {
                return Container(height: screenWidth/3,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(controller.errorMachines.value.toString(),
                                style: TextStyle(
                                    fontSize: screenWidth / 8,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text("Error(s) Reported".tr)
                        ],
                      ),
                    ),
                  ),
                );
              }),
              GetX<ErrorMachinesController>(builder: (_) {
                return Container(
                    child: Flexible(
                        child: Center(
                            child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: ((screenWidth / screenHeight) / 0.2),
                  children: List.generate(_.laundryList.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          _.viewLaundryDetails(index);
                        },
                        child: LaundryTile(_.laundryList[index]));
                  }),
                ))));
              }),
            ],
          )),
    );
  }
}
