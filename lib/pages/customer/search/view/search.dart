import 'package:final_year_project/pages/customer/search/controller/search_controller.dart';
import 'package:final_year_project/pages/customer/search/tile/search_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    var now = new DateTime.now();
    var date = DateFormat('yyyy-MM-dd').format(now);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Explore",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: GetBuilder<SearchController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                        height: screenHeight / 15,
                        margin: EdgeInsets.only(
                            left: screenWidth / 20, right: screenWidth / 20),
                        child: Card(
                          elevation: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed("/search");
                              },
                              child: TextField(
                                controller: controller.searchController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: GestureDetector(
                                      child: Icon(Icons.search),
                                      onTap: () {
                                        controller.searchLaundry();
                                      },
                                    )),
                              ),
                            ),
                          ),
                        )),
                    (controller.serviceList.length != 0)
                        ? Container(
                            child: Flexible(
                                child: Center(
                                    child: GridView.count(
                            crossAxisCount: 1,
                            childAspectRatio:
                                ((screenWidth / screenHeight) / 0.2),
                            children: List.generate(
                                controller.serviceList.length, (index) {
                              return GestureDetector(
                                  onTap: () {
                                    controller.countClick(index, date);
                                    controller.viewServicesDetails(index);
                                  },
                                  child: SearchTile(
                                      controller.serviceList[index], index));
                            }),
                          ))))
                        : Container(
                            child: Column(
                              children: [
                                Container(
                                  height: screenHeight / 5,
                                  width: screenWidth / 5,
                                  child: Image.asset("assets/icons/sad.png"),
                                ),
                                Text("WE COULD'NT FIND THIS SHOP...",
                                    style: TextStyle(
                                        fontSize: screenWidth / 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
