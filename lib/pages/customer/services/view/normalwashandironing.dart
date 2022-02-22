import 'package:flutter/material.dart';


class NormalWashandIroningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Normal Wash and Ironing",
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