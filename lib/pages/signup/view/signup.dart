// ignore_for_file: unused_local_variable

import 'package:final_year_project/pages/signup/controller/singup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: GetBuilder<SignupController>(builder: (controller) {
              return Column(
                children: [
                  Text("Hi!",
                      style: GoogleFonts.getFont('Lato',
                          textStyle: TextStyle(
                              letterSpacing: 5,
                              fontSize: screenWidth / 10,
                              fontWeight: FontWeight.bold))),
                  Text("Create a new account",
                      style: GoogleFonts.getFont('Lato',
                          textStyle: TextStyle(
                              fontSize: screenWidth / 20,
                              fontWeight: FontWeight.normal))),
                  Container(
                      child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          controller: controller.firstnamecontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'First Name',
                              icon: Icon(Icons.person)),
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          controller: controller.lastnamecontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Last Name',
                              icon: Icon(Icons.person)),
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          controller: controller.emailcontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email',
                              icon: Icon(Icons.email)),
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          obscureText: true,
                          controller: controller.passwordcontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              icon: Icon(Icons.lock)),
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          obscureText: true,
                          controller: controller.confirmpasswordcontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Confirm Password',
                              icon: Icon(Icons.verified_user_rounded)),
                        ),
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "I am a:",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      GetBuilder<SignupController>(
                                          builder: (controller) {
                                        return Radio(
                                          value: "Customer",
                                          groupValue:
                                              controller.selectedRole.value,
                                          onChanged: (value) {
                                            controller.handleRadioButton(value);
                                          },
                                          activeColor: Colors.teal,
                                        );
                                      }),
                                      Text("Customer"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      GetBuilder<SignupController>(
                                          builder: (controller) {
                                        return Radio(
                                          value: "Laundry Owner",
                                          groupValue:
                                              controller.selectedRole.value,
                                          onChanged: (value) {
                                            controller.handleRadioButton(value);
                                          },
                                          activeColor: Colors.teal,
                                        );
                                      }),
                                      Text("Laundry Owner"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {
                          controller.signupUser();
                        },
                        child: Container(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(fontSize: screenWidth / 20),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: screenWidth / 1.5,
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
