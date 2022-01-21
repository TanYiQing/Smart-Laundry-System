import 'package:final_year_project/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // LoginController gendercontroller = Get.put(LoginController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight / 4,
                        width: screenWidth / 2,
                        child: Image.asset(
                          'assets/images/logo.png',
                          scale: 1,
                        ),
                      ),
                      Text("Welcome!",
                          style: GoogleFonts.getFont('Lato',
                              textStyle: TextStyle(
                                  letterSpacing: 5,
                                  fontSize: screenWidth / 20,
                                  fontWeight: FontWeight.bold))),
                      Text("Sign in to continue",
                          style: GoogleFonts.getFont('Lato',
                              textStyle: TextStyle(
                                  fontSize: screenWidth / 30,
                                  fontWeight: FontWeight.normal))),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GetBuilder<LoginController>(
                            init: LoginController(),
                            builder: (controller) {
                              return Container(
                                  child: Card(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: TextField(
                                      controller: controller.emailController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Email',
                                          icon: Icon(Icons.email)),
                                    ),
                                  ),
                                ),
                              ));
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GetBuilder<LoginController>(
                            init: LoginController(),
                            builder: (controller) {
                              return Container(
                                  child: Card(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: TextField(
                                      obscureText: true,
                                      controller: controller.passwordController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Password',
                                          icon: Icon(Icons.lock)),
                                    ),
                                  ),
                                ),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    GetBuilder<LoginController>(
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
                                    GetBuilder<LoginController>(
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
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 8.0, right: 8.0),
                        child: Container(
                          child: GetBuilder<LoginController>(builder: (_) {
                            return MaterialButton(
                              onPressed: () {
                                _.clickLogin();
                              },
                              child: Container(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(fontSize: screenWidth / 20),
                                ),
                              ),
                            );
                          }),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(25, 177, 126, 1),
                                Color.fromRGBO(0, 194, 203, 1)
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: screenWidth / 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Forget Password?"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
