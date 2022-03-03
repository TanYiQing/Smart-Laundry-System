import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: GetBuilder<ServicesDetailsController>(builder: (controller) {
            return Text(
              controller.laundry.laundryName,
              style: TextStyle(color: Colors.black),
            );
          }),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
