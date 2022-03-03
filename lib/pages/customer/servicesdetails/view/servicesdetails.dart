import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: Container(
              height: screenWidth / 1.5,
              width: double.infinity,
              child:
                  GetBuilder<ServicesDetailsController>(builder: (controller) {
                return CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/laundryshopimage.png");
              }),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            body: NestedScrollView(headerSliverBuilder: (context,innerBoxisScrolled)
              body: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: screenWidth / 2.5,
                    width: double.infinity,
                  ),
                  Container(color: Colors.black,height: 1000,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return Text(
                                controller.laundry.laundryName,
                                style: TextStyle(fontSize: screenWidth / 15),
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
