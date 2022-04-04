import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Notifications",
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
                child: Lottie.asset("assets/lottie/notification-not-found.json",
                    ),
              ),
              Text("NO NOTIFICATIONS",
                  style: TextStyle(
                      fontSize: screenWidth / 18, fontWeight: FontWeight.bold)),
              Text("We will notify you later",
                  style: TextStyle(fontSize: screenWidth / 25))
            ],
          ),
        ),
      ),
    );
  }
}
