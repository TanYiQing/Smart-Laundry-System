import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:final_year_project/pages/customer/services/tile/services_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LaundryNearByPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    var now = new DateTime.now();
    var date = DateFormat('yyyy-MM-dd').format(now);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Laundry Near You".tr,
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
                children: List.generate(_.laundryNearbyList.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        _.countClick(index, date);
                        _.viewServicesDetails(index);
                      },
                      child: ServicesTile(_.laundryNearbyList[index], index));
                }),
              ))));
            }),
          ],
        ),
      ),
    );
  }
}
