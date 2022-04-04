import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnGoingOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "On Going Order",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight / 3,
                child: Lottie.asset(
                  "assets/lottie/order-not-found.json",
                ),
              ),
              Text("NO ON GOING ORDER",
                  style: TextStyle(
                      fontSize: screenWidth / 18, fontWeight: FontWeight.bold)),
              Text("Explore and order now",
                  style: TextStyle(fontSize: screenWidth / 25))
            ],
          ),
        ),
    );
  }
}
