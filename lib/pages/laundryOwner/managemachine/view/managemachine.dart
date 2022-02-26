import 'package:final_year_project/pages/laundryOwner/managemachine/controller/managemachine_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageMachinePageLaundry extends StatelessWidget {
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
                "Add Machine",
                style: TextStyle(color: Colors.black),
             ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "How many machine do you have?",
                        style: TextStyle(fontSize: screenWidth / 25),
                      )),
                ),
                Container(
                  height: screenHeight / 5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: screenWidth / 3,
                                      child: Image.asset(
                                          "assets/images/washingmachine.png")),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Washing Machine",
                                    style:
                                        TextStyle(fontSize: screenWidth / 22),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.remove),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.add),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "x2",
                                      style:
                                          TextStyle(fontSize: screenWidth / 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: screenWidth / 3,
                                      child: Image.asset(
                                          "assets/images/drywashingmachine.png")),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dry Washing Machine",
                                    style:
                                        TextStyle(fontSize: screenWidth / 22),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.remove),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.add),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "x2",
                                      style:
                                          TextStyle(fontSize: screenWidth / 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: screenWidth / 3,
                                      child: Image.asset(
                                          "assets/images/ironingmachine.png")),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ironing Machine",
                                    style:
                                        TextStyle(fontSize: screenWidth / 22),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.remove),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(Icons.add),
                                          ),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(-1.0, -4.0),
                                                  end: Alignment(1.0, 4.0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        0, 194, 203, 1),
                                                    Colors.white
                                                  ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "x2",
                                      style:
                                          TextStyle(fontSize: screenWidth / 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
