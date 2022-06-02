import 'package:final_year_project/pages/mutual/forgotpassword/controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ForgotPasswordController>(builder: (controller) {
        return SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Container(
                  height: screenHeight / 2.5,
                  width: screenWidth / 1.5,
                  child: Lottie.asset("assets/lottie/verificationcode.json")),
              Text(
                "Reset Password verification",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: screenWidth / 18),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter the code sent to ",
                    ),
                    Text(controller.email[0],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Colors.black,
                      activeColor: Colors.black,
                      selectedColor: Colors.teal,
                      selectedFillColor: Colors.white),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  errorAnimationController: controller.errorController,
                  controller: controller.textEditingController,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    // setState(() {
                    //   currentText = value;
                    // });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      controller.verifyCode();
                    },
                    child: Container(
                      child: Text(
                        "Verify",
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
          )),
        );
      }),
    );
  }
}
