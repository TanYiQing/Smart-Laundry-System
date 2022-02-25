import 'package:final_year_project/pages/laundryOwner/mylaundrydetails/controller/mylaundrydetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLaundryDetailsPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: GetBuilder<MyLaundryDetailsController>(builder: (controller) {
            return Text(
              controller.laundry.laundryName,
              style: TextStyle(color: Colors.black),
            );
          }),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            TextButton(onPressed: () {}, child: Text("Manage Machine"))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
