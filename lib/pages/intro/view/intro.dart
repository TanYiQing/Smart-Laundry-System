import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  child: Column(children: [
                    CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          Container(
                            height: screenHeight / 1.8,
                            width: screenWidth / 1.2,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 7,
                                    width: screenWidth / 7,
                                    child: Image.asset(
                                        'assets/images/wideselection.png')),
                                Text("Wide Selection of Laundry",
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
                            height: screenHeight / 1.8,
                            width: screenWidth / 1.2,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 8,
                                    width: screenWidth / 8,
                                    child: Image.asset(
                                        'assets/images/fast.png')),
                                Text("Fast",
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold))),
                                Text(
                                    "Fast and efficient laundry service ever!",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont('Lato',
                                        textStyle: TextStyle(
                                          fontSize: screenWidth / 30,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                            height: screenHeight / 1.8,
                            width: screenWidth / 1.2,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 7,
                                    width: screenWidth / 7,
                                    child: Image.asset(
                                        'assets/images/clean.png')),
                                Text("Wide Selection of Laundry",
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
                            height: screenHeight / 1.8,
                            width: screenWidth / 1.2,
                            child: Column(
                              children: [
                                Container(
                                    height: screenHeight / 7,
                                    width: screenWidth / 7,
                                    child: Image.asset(
                                        'assets/images/easypayment.png')),
                                Text("Wide Selection of Laundry",
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
                        ])
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
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(25, 177, 126, 1),
                          Color.fromRGBO(0, 194, 203, 1)
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: screenWidth / 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: MaterialButton(
                      onPressed: () {Get.toNamed('/signup');},
                      child: Container(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: screenWidth / 20),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: screenWidth / 1.5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
