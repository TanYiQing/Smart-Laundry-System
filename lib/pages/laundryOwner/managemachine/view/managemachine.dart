import 'package:final_year_project/pages/laundryOwner/managemachine/controller/managemachine_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageMachinePageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: GetBuilder<ManageMachineController>(builder: (controller) {
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
