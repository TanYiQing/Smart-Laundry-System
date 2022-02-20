import 'package:flutter/material.dart';

class OnGoingOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: Container(
          child: Text('On Going Order'),
        ),
      ),
    );
  }
}
