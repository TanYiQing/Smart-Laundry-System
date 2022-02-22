import 'package:flutter/material.dart';

class NewOrderPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "New Order",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
                child: Flexible(
                    child: Center(
                        child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: ((screenWidth / screenHeight) / 0.25),
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.black),
                );
              }),
            )))),
          ],
        ),
      ),
    );
  }
}
