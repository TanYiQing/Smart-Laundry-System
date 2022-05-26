import 'package:final_year_project/pages/mutual/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Gender",
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: GetBuilder<AccountController>(builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: screenWidth / 3,
                          height: screenHeight / 5,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            elevation:
                                controller.gender.value == "Male" ? 8 : 1,
                            child: Column(
                              children: [
                                Radio(
                                  value: "Male",
                                  groupValue: controller.gender.value,
                                  onChanged: (value) {
                                    controller.handleRadioButton(value);
                                  },
                                  activeColor: Colors.teal,
                                ),
                                Text(
                                  "Male",
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: screenWidth / 10,
                                        child: Image.asset(
                                            "assets/icons/male.png")))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth / 3,
                          height: screenHeight / 5,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            elevation:
                                controller.gender.value == "Female" ? 8 : 1,
                            child: Column(
                              children: [
                                Radio(
                                  value: "Female",
                                  groupValue: controller.gender.value,
                                  onChanged: (value) {
                                    controller.handleRadioButton(value);
                                  },
                                  activeColor: Colors.teal,
                                ),
                                Text(
                                  "Female",
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: screenWidth / 10,
                                        child: Image.asset(
                                            "assets/icons/female.png")))
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              )),
          Align(
            alignment: Alignment.centerRight,
            child: GetBuilder<AccountController>(builder: (controller) {
              return Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      controller.saveGender();
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
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
