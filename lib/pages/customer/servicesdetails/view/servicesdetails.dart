import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/pages/customer/servicesdetails/controller/servicesdetails_controller.dart';
import 'package:final_year_project/pages/customer/servicesdetails/tile/machine_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              floating: true,
              pinned: true,
              expandedHeight: screenWidth / 2,
              flexibleSpace:
                  GetBuilder<ServicesDetailsController>(builder: (controller) {
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: GetBuilder<ServicesDetailsController>(
                      builder: (controller) {
                    return Text(
                      controller.laundry.laundryName +
                          "-" +
                          controller.laundry.laundryCity,
                      style: TextStyle(color: Colors.black),
                    );
                  }),
                  centerTitle: true,
                  background: Container(
                    width: double.infinity,
                    height: screenHeight / 2,
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/laundryshopimage.png"),
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  GetBuilder<ServicesDetailsController>(builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on, color: Colors.red),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(controller
                                                .laundry.laundryAddress1 +
                                            ", " +
                                            controller.laundry.laundryAddress2),
                                        Text(controller.laundry.laundryZIP +
                                            ", " +
                                            controller.laundry.laundryCity),
                                        Text(controller.laundry.laundryState)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.local_laundry_service_outlined,
                                      color: Colors.blue),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            controller.machinelist.length
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "See details",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.contact_phone_outlined,
                                      color: Colors.black),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.laundry.laundryOwnerContact,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                            height: screenWidth / 2,
                            width: screenWidth / 2,
                            child: Image.asset("assets/images/search.png")),
                        Text(
                          "What services are you looking at?",
                          style: TextStyle(fontSize: screenWidth / 20),
                        ),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: MaterialButton(
                                      onPressed: () {
                                        controller.scrollToItem("Normal Wash");
                                      },
                                      child: Container(
                                        child: Text(
                                          "Normal Wash",
                                          style: TextStyle(
                                              fontSize: screenWidth / 30),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [
                                              Color.fromRGBO(0, 194, 203, 1),
                                              Colors.white
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    width: screenWidth / 4,
                                    height: screenHeight / 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: MaterialButton(
                                      onPressed: () {
                                        controller.scrollToItem("Dry Wash");
                                      },
                                      child: Container(
                                        child: Text(
                                          "Dry Wash",
                                          style: TextStyle(
                                              fontSize: screenWidth / 30),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [
                                              Color.fromRGBO(0, 194, 203, 1),
                                              Colors.white
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    width: screenWidth / 4,
                                    height: screenHeight / 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: MaterialButton(
                                      onPressed: () {
                                        controller.scrollToItem("Ironing");
                                      },
                                      child: Container(
                                        child: Text(
                                          "Ironing",
                                          style: TextStyle(
                                              fontSize: screenWidth / 30),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(-1.0, -4.0),
                                            end: Alignment(1.0, 4.0),
                                            colors: [
                                              Color.fromRGBO(0, 194, 203, 1),
                                              Colors.white
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    width: screenWidth / 4,
                                    height: screenHeight / 20,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return Container(
                                key: controller.normalwashKey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Normal Washing Service",
                                    style:
                                        TextStyle(fontSize: screenWidth / 20),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        GetBuilder<ServicesDetailsController>(builder: (_) {
                          return Container(
                            height: screenWidth,
                            child: Center(
                                child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio:
                                  ((screenWidth / screenHeight) / 0.5),
                              children: List.generate(4, (index) {
                                // return MachineTile(_.washingmachinelist[index]);
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                );
                              }),
                            )),
                          );
                        }),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return Container(
                                key: controller.drywashKey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Dry Washing Service",
                                    style:
                                        TextStyle(fontSize: screenWidth / 20),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        GetBuilder<ServicesDetailsController>(builder: (_) {
                          return Container(
                            height: screenWidth,
                            child: Center(
                                child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio:
                                  ((screenWidth / screenHeight) / 0.5),
                              children: List.generate(4, (index) {
                                // return MachineTile(_.washingmachinelist[index]);
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                );
                              }),
                            )),
                          );
                        }),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return Container(
                                key: controller.ironingKey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Ironing Service",
                                    style:
                                        TextStyle(fontSize: screenWidth / 20),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        GetBuilder<ServicesDetailsController>(builder: (_) {
                          return Container(
                            height: screenWidth,
                            child: Center(
                                child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio:
                                  ((screenWidth / screenHeight) / 0.5),
                              children: List.generate(4, (index) {
                                // return MachineTile(_.washingmachinelist[index]);
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                );
                              }),
                            )),
                          );
                        }),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
