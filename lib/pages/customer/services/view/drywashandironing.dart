import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DryWashandIroningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Dry Wash and Ironing",
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
                crossAxisCount: 2,
                childAspectRatio: ((screenWidth / screenHeight) / 0.55),
                children: List.generate(_.serviceList.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        // _.viewLaundryDetails(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.black,
                        ),
                      ));
                }),
              ))));
            }),
          ],
        ),
      ),
    );
  }
}
