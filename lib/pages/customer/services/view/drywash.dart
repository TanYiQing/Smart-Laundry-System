import 'package:flutter/material.dart';


class DryWashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Dry Wash",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
      
      ),
    );
  }
}