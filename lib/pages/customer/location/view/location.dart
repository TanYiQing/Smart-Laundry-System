import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Location",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed("/addnewlocation");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/icons/add-point.png",
                  width: screenWidth / 15,
                ),
              ),
            )
          ]),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/noaddress.png"),
            ),
            Text("NO ADDRESS FOUND",
                style: TextStyle(
                    fontSize: screenWidth / 18, fontWeight: FontWeight.bold)),
            Text("Please add your address now",
                style: TextStyle(fontSize: screenWidth / 25))
          ],
        ),
      ),
    );
  }
}
