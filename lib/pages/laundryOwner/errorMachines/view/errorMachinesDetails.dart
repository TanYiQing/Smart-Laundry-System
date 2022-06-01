import 'package:final_year_project/pages/laundryOwner/errorMachines/controller/errorMachinesDetails_controller.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/tile/errorMachines_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ErrorMachinesDetailsPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            GetX<ErrorMachinesDetailsController>(builder: (_) {
              return (_.errorList.length != 0)
                  ? Container(
                      child: Flexible(
                          child: Center(
                              child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: ((screenWidth / screenHeight) / 0.35),
                      children: List.generate(_.errorList.length, (index) {
                        return GestureDetector(
                            onTap: () {
                              // _.viewLaundryDetails(index);
                            },
                            child: ErrorMachinesTile(_.errorList[index]));
                      }),
                    ))))
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: screenHeight / 3,
                            child: Lottie.asset("assets/lottie/celebrate.json"),
                          ),
                          Text("YAYYYY!",
                              style: TextStyle(
                                  fontSize: screenWidth / 18,
                                  fontWeight: FontWeight.bold)),
                          Text("THERE ARE NO ERROR REPORTED".tr,
                              style: TextStyle(fontSize: screenWidth / 25))
                        ],
                      ),
                    );
            }),
          ],
        ));
  }
}
