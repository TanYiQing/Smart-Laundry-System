import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "About Us",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/logo.png"),
            ),
            Text("v1.0.0.0.0.0")
          ],
        )),
      ),
    );
  }
}
