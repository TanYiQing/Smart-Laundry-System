import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: screenHeight / 3,
                    width: screenWidth / 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 1,
                    ),
                  ),
                  Container(
                    height: screenWidth / 1.5,
                    child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 2.0,
                            enlargeCenterPage: true,
                            height: screenWidth / 1.5),
                        items: [
                          Container(
                            height: screenWidth / 1.5,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 5,
                                    width: screenWidth / 5,
                                    child: Lottie.asset(
                                        'assets/lottie/online-shopping.json')),
                                Text("WIDE SELECTION OF LAUNDRY",
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold))),
                                Text(
                                    "We provide a wide selection of laundry, choose the laundry that you like!",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 30,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                            height: screenWidth / 1.5,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 5,
                                    width: screenWidth / 5,
                                    child: Lottie.asset(
                                        'assets/lottie/rocket.json')),
                                Text("FAST",
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold))),
                                Text("Fast and efficient laundry service ever!",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 30,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                            height: screenWidth / 1.5,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 5,
                                    width: screenWidth / 5,
                                    child: Lottie.asset(
                                        'assets/lottie/loundary-app-interaction.json')),
                                Text("CLEAN AND FRESH",
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold))),
                                Text(
                                    "Get your clothes back with clean and fresh in seconds!",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 30,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 5,
                                    width: screenWidth / 5,
                                    child: Lottie.asset(
                                        'assets/lottie/online-payments.json')),
                                Text("EASY PAYMENT",
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold))),
                                Text(
                                    "Easy payment with online banking instead of traditional token payment method!",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 30,
                                        ))),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50.0, left: 8.0, right: 8.0),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {
                          Get.toNamed('/login');
                        },
                        child: Container(
                          child: Text(
                            "LOGIN",
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: MaterialButton(
                        onPressed: () {
                          Get.toNamed('/signup');
                        },
                        child: Container(
                          child: Text(
                            "REGISTER NOW",
                            style: TextStyle(fontSize: screenWidth / 20),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: screenWidth / 1.5,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
