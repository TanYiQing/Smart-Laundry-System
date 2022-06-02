import 'package:final_year_project/pages/mutual/enteremail/controller/enteremail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class EnterEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Email",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<EnterEmailController>(builder: (controller) {
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    height: screenHeight / 2.5,
                    width: screenWidth / 1.5,
                    child: Lottie.asset("assets/lottie/email.json")),
                Text(
                  "Email for verification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: screenWidth / 18),
                ),
                Text(
                  "Please enter the email for us to send verification code",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          controller: controller.emailController,
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
                  padding: const EdgeInsets.all(5.0),
                  child:
                      GetBuilder<EnterEmailController>(builder: (controller) {
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
                                            Icons.local_laundry_service_rounded,
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
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                  child: Container(
                    child: MaterialButton(
                      onPressed: () {
                        controller.sendVerificationCode();
                        Get.toNamed("/forgotpassword", arguments: [
                          controller.emailController.text.toString(),
                          controller.selectedRole.value
                        ]);
                      },
                      child: Container(
                        child: Text(
                          "Verify Email",
                          style: TextStyle(fontSize: screenWidth / 20),
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
                    width: screenWidth / 1.5,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
