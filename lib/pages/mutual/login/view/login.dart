import 'package:final_year_project/pages/mutual/login/controller/login_controller.dart';
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
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: screenHeight / 5,
                          width: screenWidth / 2,
                          child: Image.asset(
                            'assets/images/logo.png',
                            scale: 1,
                            fit: BoxFit.cover,
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
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
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
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: TextField(
                                        obscureText: controller.ishidden.value,
                                        controller:
                                            controller.passwordController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Password',
                                          icon: Icon(Icons.lock),
                                          suffixIcon: IconButton(
                                              icon: Icon(
                                                  controller.ishidden.value
                                                      ? Icons.visibility
                                                      : Icons.visibility_off),
                                              onPressed: () {
                                                controller.togglePassword();
                                              }),
                                        ),
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
                    padding: const EdgeInsets.all(5.0),
                    child: GetBuilder<LoginController>(builder: (controller) {
                      return Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: screenWidth / 3,
                                  height: screenHeight / 6,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    elevation: controller.selectedRole.value ==
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
                                            controller.handleRadioButton(value);
                                          },
                                          activeColor: Colors.teal,
                                        ),
                                        Text("Customer"),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
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
                                    elevation: controller.selectedRole.value ==
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
                                            controller.handleRadioButton(value);
                                          },
                                          activeColor: Colors.teal,
                                        ),
                                        Text("Laundry Owner"),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
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
                  GetBuilder<LoginController>(builder: (_) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                activeColor: Colors.teal[400],
                                onChanged: (bool? value) {
                                  _.rememberMe(value);
                                },
                                value: _.rememberme.value,
                              ),
                              Text("Stay Signed In?")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {
                                  _.clickLogin();
                                },
                                child: Container(
                                  child: Text(
                                    "LOGIN",
                                    style:
                                        TextStyle(fontSize: screenWidth / 20),
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
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
