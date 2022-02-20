import 'package:flutter/material.dart';

class PurchaseHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Purchase History",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
      body: Center(
        child: Container(
          child: Text('Purchase History'),
        ),
      ),
    );
  }
}
