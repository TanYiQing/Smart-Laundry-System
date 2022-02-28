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
          title: Text(
            "Manage Machine",
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
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
