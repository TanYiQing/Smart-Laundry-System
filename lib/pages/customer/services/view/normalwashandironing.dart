import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:final_year_project/pages/customer/services/tile/services_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NormalWashandIroningPage extends StatelessWidget {
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
            "Normal Wash and Ironing",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            GetBuilder<ServicesController>(builder: (_) {
              return Container(
                  child: Flexible(
                      child: Center(
                          child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: ((screenWidth / screenHeight) / 0.2),
                children: List.generate(_.serviceList.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        // _.viewLaundryDetails(index);
                      },
                      child: ServicesTile(_.serviceList[index]));
                }),
              ))));
            }),
          ],
        ),
      ),
    );
  }
}
