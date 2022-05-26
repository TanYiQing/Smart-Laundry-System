import 'package:final_year_project/pages/mutual/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "First Name",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: GetBuilder<AccountController>(builder: (controller) {
                      return TextField(
                        controller: controller.firstnamecontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'First Name'),
                      );
                    }),
                  ),
                ),
              ))),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
              child: GetBuilder<AccountController>(builder: (controller) {
                return Container(
                  child: MaterialButton(
                    onPressed: () {
                      controller.saveFirstName();
                    },
                    child: Container(
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: screenWidth / 30),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                          colors: [
                            Color.fromRGBO(0, 194, 203, 1),
                            Colors.white
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: screenWidth / 3.5,
                  height: screenHeight / 20,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
