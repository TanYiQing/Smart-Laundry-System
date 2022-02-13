// ignore_for_file: unused_local_variable

import 'package:final_year_project/pages/mutual/signup/controller/singup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: [
              Icon(Icons.circle, color: Colors.teal[50]),
              Icon(Icons.circle, color: Colors.teal[100]),
              Icon(Icons.circle, color: Colors.teal[200]),
              Icon(Icons.circle, color: Colors.teal[300]),
              Icon(Icons.circle, color: Colors.teal[400])
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: GetBuilder<SignupController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Container(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: TextField(
                                obscureText: controller.ishidden1.value,
                                controller: controller.passwordcontroller,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Password',
                                  icon: Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                      icon: Icon(controller.ishidden1.value
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        controller.togglePassword1();
                                      }),
                                ),
                              ),
                            ),
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: TextField(
                                obscureText: controller.ishidden2.value,
                                controller:
                                    controller.confirmpasswordcontroller,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Confirm Password',
                                  icon: Icon(Icons.verified_user_rounded),
                                  suffixIcon: IconButton(
                                      icon: Icon(controller.ishidden2.value
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        controller.togglePassword2();
                                      }),
                                ),
                              ),
                            ),
                          ),
                        )),
                      ),
                      Container(
                        height: screenHeight / 5,
                        width: screenWidth / 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 15),
                          child: FlutterPwValidator(
                            controller: controller.passwordcontroller,
                            height: screenHeight / 5,
                            width: screenWidth / 1.5,
                            minLength: 8,
                            uppercaseCharCount: 1,
                            numericCharCount: 1,
                            specialCharCount: 1,
                            onSuccess: () {},
                            defaultColor: Colors.grey,
                            successColor: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 20),
                        child:
                            GetBuilder<SignupController>(builder: (controller) {
                          return Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: screenWidth / 3,
                                      height: screenHeight / 6,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        elevation:
                                            controller.selectedRole.value ==
                                                    "Customer"
                                                ? 8
                                                : 1,
                                        child: Column(
                                          children: [
                                            Radio(
                                              value: "Customer",
                                              groupValue:
                                                  controller.selectedRole.value,
                                              onChanged: (value) {
                                                controller
                                                    .handleRadioButton(value);
                                              },
                                              activeColor: Colors.teal,
                                            ),
                                            Text("Customer"),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.shopping_cart_rounded,
                                                color: Colors.deepOrange,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth / 3,
                                      height: screenHeight / 6,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        elevation:
                                            controller.selectedRole.value ==
                                                    "Laundry Owner"
                                                ? 8
                                                : 1,
                                        child: Column(
                                          children: [
                                            Radio(
                                              value: "Laundry Owner",
                                              groupValue:
                                                  controller.selectedRole.value,
                                              onChanged: (value) {
                                                controller
                                                    .handleRadioButton(value);
                                              },
                                              activeColor: Colors.teal,
                                            ),
                                            Text("Laundry Owner"),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                  Icons
                                                      .local_laundry_service_rounded,
                                                  color: Colors.blue[400]),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
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
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: screenWidth / 1.5,
                        ),
                      ),
                      GestureDetector(
                          child: Text("Terms and Conditions",
                              style: TextStyle(
                                  decoration: TextDecoration.underline)))
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
