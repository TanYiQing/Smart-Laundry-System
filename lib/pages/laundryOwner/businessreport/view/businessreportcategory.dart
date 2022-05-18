import 'package:flutter/material.dart';

class BusinessReportCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Business Report",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Income Report",
                      style: TextStyle(fontSize: screenWidth / 20),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Error Machine Report",
                      style: TextStyle(fontSize: screenWidth / 20),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Customer Report",
                      style: TextStyle(fontSize: screenWidth / 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
