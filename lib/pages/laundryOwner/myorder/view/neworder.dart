import 'package:flutter/material.dart';

class NewOrderPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Container(
            child: Text('New Order'),
          ),
        ),
      ),
    );
  }
}
