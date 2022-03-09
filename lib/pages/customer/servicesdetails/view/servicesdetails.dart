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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    key: controller.topKey,
                    width: double.infinity,
                    height: screenHeight / 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/laundryshopimage.png"),
                    ),
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
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.toNamed(
                                                    "/servicesdashboard");
                                              },
                                              child: Text(
                                                "See details",
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline),
                                              ),
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
                            height: screenWidth / 2.5,
                            width: screenWidth / 2.5,
                            child: Image.asset("assets/images/search.png")),
                        Text(
                          "What services are you looking at?",
                          style: TextStyle(fontSize: screenWidth / 20),
                        ),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GetBuilder<ServicesDetailsController>(
                                builder: (controller) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: MaterialButton(
                                        onPressed: (controller
                                                    .washingmachinelist
                                                    .length !=
                                                0)
                                            ? () {
                                                controller.scrollToItem(
                                                    "Normal Wash");
                                              }
                                            : null,
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
                                        onPressed: (controller
                                                    .drywashingmachinelist
                                                    .length !=
                                                0)
                                            ? () {
                                                controller
                                                    .scrollToItem("Dry Wash");
                                              }
                                            : null,
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
                                        onPressed: (controller
                                                    .ironingmachinelist
                                                    .length !=
                                                0)
                                            ? () {
                                                controller
                                                    .scrollToItem("Ironing");
                                              }
                                            : null,
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
                              );
                            }),
                          );
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.washingmachinelist.length != 0)
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        key: controller.normalwashKey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Normal Washing Service",
                                            style: TextStyle(
                                                fontSize: screenWidth / 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        width: screenWidth / 5,
                                        height: screenHeight / 35,
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Container(
                                            child: Text(
                                              "View All",
                                              style: TextStyle(
                                                  fontSize: screenWidth / 35),
                                            ),
                                          ),
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
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ],
                                )
                              : Container();
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.washingmachinelist.length != 0)
                              ? Container(
                                  height:
                                      (controller.washingmachinelist.length > 2)
                                          ? screenWidth / 0.85
                                          : screenWidth / 2,
                                  child: Center(
                                      child: GridView.count(
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        ((screenWidth / screenHeight) / 0.7),
                                    children: List.generate(
                                        (controller
                                                    .washingmachinelist.length <
                                                4)
                                            ? controller
                                                .washingmachinelist.length
                                            : 4, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            controller
                                                .viewServicesMachineDetails(
                                                    index, "Washing Machine");
                                          },
                                          child: MachineTile(controller
                                              .washingmachinelist[index]),
                                        ),
                                      );
                                    }),
                                  )),
                                )
                              : Container();
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.drywashingmachinelist.length != 0)
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        key: controller.drywashKey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Dry Washing Service",
                                            style: TextStyle(
                                                fontSize: screenWidth / 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        width: screenWidth / 5,
                                        height: screenHeight / 35,
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Container(
                                            child: Text(
                                              "View All",
                                              style: TextStyle(
                                                  fontSize: screenWidth / 35),
                                            ),
                                          ),
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
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ],
                                )
                              : Container();
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.drywashingmachinelist.length != 0)
                              ? Container(
                                  height:
                                      (controller.drywashingmachinelist.length >
                                              2)
                                          ? screenWidth / 0.85
                                          : screenWidth / 2,
                                  child: Center(
                                      child: GridView.count(
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        ((screenWidth / screenHeight) / 0.7),
                                    children: List.generate(
                                        (controller.drywashingmachinelist
                                                    .length <
                                                4)
                                            ? controller
                                                .drywashingmachinelist.length
                                            : 4, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            controller
                                                .viewServicesMachineDetails(
                                                    index,
                                                    "Dry Washing Machine");
                                          },
                                          child: MachineTile(controller
                                              .drywashingmachinelist[index]),
                                        ),
                                      );
                                    }),
                                  )),
                                )
                              : Container();
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.ironingmachinelist.length != 0)
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        key: controller.ironingKey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Ironing Service",
                                            style: TextStyle(
                                                fontSize: screenWidth / 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Container(
                                        width: screenWidth / 5,
                                        height: screenHeight / 35,
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Container(
                                            child: Text(
                                              "View All",
                                              style: TextStyle(
                                                  fontSize: screenWidth / 35),
                                            ),
                                          ),
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
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ],
                                )
                              : Container();
                        }),
                        GetBuilder<ServicesDetailsController>(
                            builder: (controller) {
                          return (controller.ironingmachinelist.length != 0)
                              ? Container(
                                  height:
                                      (controller.ironingmachinelist.length > 2)
                                          ? screenWidth / 0.85
                                          : screenWidth / 2,
                                  child: Center(
                                      child: GridView.count(
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        ((screenWidth / screenHeight) / 0.7),
                                    children: List.generate(
                                        (controller
                                                    .ironingmachinelist.length <
                                                4)
                                            ? controller
                                                .ironingmachinelist.length
                                            : 4, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            controller
                                                .viewServicesMachineDetails(
                                                    index, "Ironing Machine");
                                          },
                                          child: MachineTile(controller
                                              .ironingmachinelist[index]),
                                        ),
                                      );
                                    }),
                                  )),
                                )
                              : Container();
                        }),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton:
            GetBuilder<ServicesDetailsController>(builder: (controller) {
          return FloatingActionButton(
            onPressed: () {
              controller.scrollToItem("Top");
            },
            elevation: 10,
            backgroundColor: Color.fromRGBO(0, 194, 203, 1),
            child: Icon(Icons.arrow_upward_outlined),
          );
        }),
      ),
    );
  }
}
