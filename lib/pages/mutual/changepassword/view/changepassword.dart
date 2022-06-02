import 'package:final_year_project/pages/mutual/changepassword/controller/changepassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPageMutual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ChangePasswordMutualController>(builder: (controller) {
        return Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      controller: controller.newpasswordcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'New Password',
                          icon: Icon(Icons.shield)),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      controller: controller.confirmpasswordcontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Confirm New Password',
                          icon: Icon(Icons.shield)),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    controller.saveChangePassword();
                  },
                  child: Container(
                    child: Text(
                      "Change Password",
                      style: TextStyle(fontSize: screenWidth / 20),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-1.0, -4.0),
                        end: Alignment(1.0, 4.0),
                        colors: [Color.fromRGBO(0, 194, 203, 1), Colors.white]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: screenWidth / 1.5,
              ),
            ),
          ],
        ));
      }),
    );
  }
}
