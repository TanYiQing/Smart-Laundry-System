import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
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
              "Explore",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                      height: screenHeight / 15,
                      margin: EdgeInsets.only(
                          left: screenWidth / 20, right: screenWidth / 20),
                      child: Card(
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/search");
                            },
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.search)),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
