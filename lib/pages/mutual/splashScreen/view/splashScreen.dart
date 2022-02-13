import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splashscreen.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/home');
                  },
                  child: Container(
                      height: screenHeight / 1.2,
                      width: screenWidth / 1.2,
                      child: Image.asset('assets/images/logo.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
