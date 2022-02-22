import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesPage extends StatelessWidget {
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
            "Services",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/normalwash");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: screenHeight / 4,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/normalwash.jpg")),
                              ),
                              child: Center(
                                  child: Text(
                                "Normal Wash",
                                style: TextStyle(
                                    fontSize: screenWidth / 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/normalwashandironing");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: screenHeight / 4,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/normalwashiron.jpg")),
                              ),
                              child: Center(
                                  child: Text(
                                "Normal Wash & Ironing",
                                style: TextStyle(
                                    fontSize: screenWidth / 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/drywash");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: screenHeight / 4,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/drywash.jpeg")),
                              ),
                              child: Center(
                                  child: Text(
                                "Dry Wash",
                                style: TextStyle(
                                    fontSize: screenWidth / 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/drywashandironing");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: screenHeight / 4,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/drywashironing.jpg")),
                              ),
                              child: Center(
                                  child: Text(
                                "Dry Wash & Ironing",
                                style: TextStyle(
                                    fontSize: screenWidth / 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/ironing");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: screenHeight / 4,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/ironing.jpg")),
                              ),
                              child: Center(
                                  child: Text(
                                "Ironing",
                                style: TextStyle(
                                    fontSize: screenWidth / 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
